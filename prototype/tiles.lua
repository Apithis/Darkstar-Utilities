local autoplace_utils = require("autoplace_utils")

local function noise_layer_peak(noise_name)
  return {
    influence = 0.5,
    noise_layer = noise_name,
    noise_persistence = 0.7,
    octaves_difference = -6,
    noise_scale = 3
  }
end

local function add_peaks(autoplace, more_peaks)
  for _, peak in ipairs(more_peaks) do
    autoplace.peaks[#autoplace.peaks + 1] = peak
  end
  return autoplace
end

-- 'rectangles' indicate
-- {{aux0, water0}, {aux1, water1}}
local function autoplace_settings(noise_name, control, rectangle, rectangle2)
  local peaks = {
    noise_layer_peak(noise_name)
  }

  local aux_center = (rectangle[2][1] + rectangle[1][1]) / 2
  local aux_range = math.abs(rectangle[2][1] - rectangle[1][1]) / 2
  local water_center = (rectangle[2][2] + rectangle[1][2]) / 2
  local water_range = math.abs(rectangle[2][2] - rectangle[1][2]) / 2

  -- fadeout too small and you'll get gaps between biomes.
  -- too large and placement get unpredictable
  local fadeout = 0.15

  peaks[#peaks + 1] = {
    aux_optimal = aux_center,
    aux_range = aux_range,
    aux_max_range = aux_range + fadeout,

    water_optimal = water_center,
    water_range = water_range,
    water_max_range = water_range + fadeout,
  }

  if rectangle2 ~= nil then
    aux_center = (rectangle2[2][1] + rectangle2[1][1]) / 2
    aux_range = math.abs(rectangle2[2][1] - rectangle2[1][1]) / 2
    water_center = (rectangle[2][2] + rectangle2[1][2]) / 2
    water_range = math.abs(rectangle2[2][2] - rectangle2[1][2]) / 2

    peaks[#peaks + 1] = {
      aux_optimal = aux_center,
      aux_range = aux_range,
      aux_max_range = aux_range + fadeout,

      water_optimal = water_center,
      water_range = water_range,
      water_max_range = water_range + fadeout,
    }
  end

  return { peaks = peaks, control = control }
end

function tile_variations_template(normal_res_picture, normal_res_transition, high_res_picture, high_res_transition, options)
  local function main_variation(size_)
    local y_ = ((size_ == 1) and 0) or ((size_ == 2) and 64) or ((size_ == 4) and 160) or 320
    local ret = {
      picture = normal_res_picture,
      count = 16,
      size = size_,
      y = y_,
      line_length = (size_ == 8) and 8 or 16,
      hr_version =
      {
        picture = high_res_picture,
        count = 16,
        size = size_,
        y = 2 * y_,
        line_length = (size_ == 8) and 8 or 16,
        scale = 0.5
      }
    }

    if options[size_] then
      for k, v in pairs(options[size_]) do
        ret[k] = v
        ret.hr_version[k] = v
      end
    end

    return ret
  end

  local function make_transition_variation(x_, line_len_, cnt_)
    return
    {
      picture = normal_res_transition,
      count = cnt_ or 8,
      line_length = line_len_ or 8,
      x = x_,
      hr_version=
      {
        picture = high_res_transition,
        count = cnt_ or 8,
        line_length = line_len_ or 8,
        x = 2 * x_,
        scale = 0.5,
      }
    }
  end

  local main_ =
  {
    main_variation(1),
    main_variation(2),
    main_variation(4),
  }
  if (options.max_size == 8) then
    table.insert(main_, main_variation(8))
  end

  return
  {
    main = main_,
    inner_corner_mask = make_transition_variation(0),
    outer_corner_mask = make_transition_variation(288),
    side_mask         = make_transition_variation(576),
    u_transition_mask = make_transition_variation(864, 1, 1),
    o_transition_mask = make_transition_variation(1152, 2, 1),
  }
end


function water_transition_template(to_tiles, normal_res_transition, high_res_transition, options)
  local function make_transition_variation(src_x, src_y, cnt_, line_len_, is_tall)
    return
    {
      picture = normal_res_transition,
      count = cnt_,
      line_length = line_len_,
      x = src_x,
      y = src_y,
      tall = is_tall,
      hr_version=
      {
        picture = high_res_transition,
        count = cnt_,
        line_length = line_len_,
        x = 2 * src_x,
        y = 2 * (src_y or 0),
        tall = is_tall,
        scale = 0.5,
      }
    }
  end

  local t = options.base or {}
  t.to_tiles = to_tiles
  local default_count = options.count or 16
  for k,y in pairs({inner_corner = 0, outer_corner = 288, side = 576, u_transition = 864, o_transition = 1152}) do
    local count = options[k .. "_count"] or default_count
    if count > 0 and type(y) == "number" then
      local line_length = options[k .. "_line_length"] or count
      local is_tall = true
      if (options[k .. "_tall"] == false) then
        is_tall = false
      end
      t[k] = make_transition_variation(0, y, count, line_length, is_tall)
      t[k .. "_background"] = make_transition_variation(544, y, count, line_length, is_tall)
      t[k .. "_mask"] = make_transition_variation(1088, y, count, line_length)
    end
  end

  return t
end


local grass_vehicle_speed_modifier = 1.6
local dirt_vehicle_speed_modifier = 1.4
local sand_vehicle_speed_modifier = 1.8
local stone_path_vehicle_speed_modifier = 1.1
local concrete_vehicle_speed_modifier = 0.8

-- An 'infinity-like' number used to give water an elevation range that
-- is effectively unbounded on the low end
local water_inflike = 4096

function water_autoplace_settings(from_depth, rectangles)
  local ret =
  {
    {
      -- Water and deep water have absolute priority. We simulate this by giving
      -- them absurdly large influence
      influence = 1e3 + from_depth,
      elevation_optimal = -water_inflike - from_depth,
      elevation_range = water_inflike,
      elevation_max_range = water_inflike, -- everywhere below elevation 0 and nowhere else
    }
  }

  -- if rectangles == nil then
    --   ret[2] = { influence = 1 }
    -- end

    -- autoplace_utils.peaks(rectangles, ret)

    return { peaks = ret }
  end

  water_tile_type_names = { "water", "deepwater", "water-green", "deepwater-green" }
  patch_for_inner_corner_of_transition_between_transition =
  {
    filename = "__base__/graphics/terrain/water-transitions/water-patch.png",
    width = 32,
    height = 32,
    hr_version =
    {
      filename = "__base__/graphics/terrain/water-transitions/hr-water-patch.png",
      scale = 0.5,
      width = 64,
      height = 64
    }
  }

  local sand_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/sand.png",
    "__base__/graphics/terrain/water-transitions/hr-sand.png",
    {
      o_transition_tall = false,
      u_transition_tall = false,
      side_tall = false,
      inner_corner_tall = false,
      outer_corner_tall = false,
      u_transition_count = 4,
      o_transition_count = 8,
      base = { background_layer_offset = -1 }
    }
    ),
  }

  local sand_transitions_between_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/sand-transition.png",
    "__base__/graphics/terrain/water-transitions/hr-sand-transition.png",
    {
      side_tall = false,
      inner_corner_tall = false,
      outer_corner_tall = false,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
      base = { water_patch = patch_for_inner_corner_of_transition_between_transition, },
    }
    ),
  }

  local grass_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/grass.png",
    "__base__/graphics/terrain/water-transitions/hr-grass.png",
    {
      o_transition_tall = false,
      u_transition_count = 4,
      o_transition_count = 8,
      base =
      {
        side_weights = { 1, 1, 1, 1,  0.25, 0.25, 1, 1,  1, 1, 0.125, 0.25,  1, 1, 1, 1 }
      }
    }
    ),
  }

  local grass_transitions_between_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/grass-transition.png",
    "__base__/graphics/terrain/water-transitions/hr-grass-transition.png",
    {
      inner_corner_tall = true,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
      base = { water_patch = patch_for_inner_corner_of_transition_between_transition, },
    }
    ),
  }

  local dry_dirt_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/dry-dirt.png",
    "__base__/graphics/terrain/water-transitions/hr-dry-dirt.png",
    {
      o_transition_tall = false,
      u_transition_count = 2,
      o_transition_count = 4,
      side_count = 8,
      outer_corner_count = 8,
      inner_corner_count = 8,
    }
    ),
  }

  local dry_dirt_transitions_between_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/dry-dirt-transition.png",
    "__base__/graphics/terrain/water-transitions/hr-dry-dirt-transition.png",
    {
      o_transition_tall = false,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
      base = { water_patch = patch_for_inner_corner_of_transition_between_transition, },
    }
    ),
  }

  local dark_dirt_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/dark-dirt.png",
    "__base__/graphics/terrain/water-transitions/hr-dark-dirt.png",
    {
      o_transition_tall = false,
      u_transition_count = 2,
      o_transition_count = 4,
      side_count = 8,
      outer_corner_count = 8,
      inner_corner_count = 8,
    }
    ),
  }

  local dark_dirt_transitions_between_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/dark-dirt-transition.png",
    "__base__/graphics/terrain/water-transitions/hr-dark-dirt-transition.png",
    {
      o_transition_tall = false,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
      base = { water_patch = patch_for_inner_corner_of_transition_between_transition, },
    }
    ),
  }

  local concrete_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/concrete.png",
    "__base__/graphics/terrain/water-transitions/hr-concrete.png",
    {
      o_transition_tall = false,
      u_transition_count = 4,
      o_transition_count = 4,
      side_count = 8,
      outer_corner_count = 8,
      inner_corner_count = 8,
      --base = { layer = 40 }
    }
    ),
  }

  local concrete_transitions_between_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/concrete-transitions.png",
    "__base__/graphics/terrain/water-transitions/hr-concrete-transitions.png",
    {
      inner_corner_tall = true,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
    }
    ),
  }

  local stone_path_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/stone-path.png",
    "__base__/graphics/terrain/water-transitions/hr-stone-path.png",
    {
      o_transition_tall = false,
      u_transition_count = 4,
      o_transition_count = 4,
      side_count = 8,
      outer_corner_count = 8,
      inner_corner_count = 8,
      --base = { layer = 40 }
    }
    ),
  }

  local stone_path_transitions_between_transitions =
  {
    water_transition_template
    (
    water_tile_type_names,
    "__base__/graphics/terrain/water-transitions/stone-path-transitions.png",
    "__base__/graphics/terrain/water-transitions/hr-stone-path-transitions.png",
    {
      inner_corner_tall = true,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
    }
    ),
  }

  local base_stone_path = data.raw["tile"]["stone-path"]

  local function tile_variant(set, variant)
    return {
      main =
      {
        {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-1.png",
          count = 16,
          size = 1,
          hr_version = {
            picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-1.png",
            count = 16,
            size = 1,
            scale = 0.5
          }
        },
        {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-2.png",
          count = 4,
          size = 2,
          probability = 0.39,
          hr_version = {
            picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."//hr-"..set.."-2.png",
            count = 4,
            size = 2,
            probability = 0.39,
            scale = 0.5
          }
        },
        {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-4.png",
          count = 4,
          size = 4,
          probability = 1,
          hr_version = {
            picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-4.png",
            count = 4,
            size = 4,
            probability = 1,
            scale = 0.5
          }
        },
      },
      inner_corner =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-inner-corner.png",
        count = 16,
        tall = true,
        hr_version = {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-inner-corner.png",
          count = 16,
          tall = true,
          scale = 0.5
        }
      },
      outer_corner =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-outer-corner.png",
        count = 8,
        tall = true,
        hr_version = {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-outer-corner.png",
          count = 8,
          tall = true,
          scale = 0.5
        }
      },
      side =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-side.png",
        count = 16,
        tall = true,
        hr_version = {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-side.png",
          count = 16,
          tall = true,
          scale = 0.5
        }
      },
      u_transition =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-u.png",
        count = 8,
        tall = true,
        hr_version = {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-u.png",
          count = 8,
          tall = true,
          scale = 0.5
        }
      },
      o_transition =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/"..set.."-o.png",
        count = 4,
        hr_version = {
          picture = "__Darkstar_utilities__/graphics/tiles/"..set.."/"..variant.."/hr-"..set.."-o.png",
          count = 4,
          scale = 0.5
        }
      }
    }
  end

  local function tile_variant_material(set, variant)
    return {
      main = base_stone_path.variant.main,
    }
  end

data:extend({
{
  type = "tile",
  name = "stone-path-black",
  needs_correction = false,
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-path-black"},
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  collision_mask = {"ground-tile"},
  walking_speed_modifier = 1.3,
  layer = 80,
  decorative_removal_probability = 1.15,
  variants = tile_variant("stone-path", "black"),
  walking_sound =
  {
    {
      filename = "__base__/sound/walking/concrete-01.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-02.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-03.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-04.ogg",
      volume = 1.2
    }
  },
  map_color={r=35, g=35, b=35},
  ageing=0,
  vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},
{
  type = "tile",
  name = "stone-path-blue",
  needs_correction = false,
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-path-blue"},
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  collision_mask = {"ground-tile"},
  walking_speed_modifier = 1.3,
  layer = 81,
  decorative_removal_probability = 1.15,
  variants = tile_variant("stone-path", "blue"),
  walking_sound =
  {
    {
      filename = "__base__/sound/walking/concrete-01.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-02.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-03.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-04.ogg",
      volume = 1.2
    }
  },
  map_color={r=0, g=0, b=100},
  ageing=0,
  vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},
{
  type = "tile",
  name = "stone-path-green",
  needs_correction = false,
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-path-green"},
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  collision_mask = {"ground-tile"},
  walking_speed_modifier = 1.3,
  layer = 82,
  decorative_removal_probability = 1.15,
  variants = tile_variant("stone-path", "green"),
  walking_sound =
  {
    {
      filename = "__base__/sound/walking/concrete-01.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-02.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-03.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-04.ogg",
      volume = 1.2
    }
  },
  map_color={r=0, g=100, b=0},
  ageing=0,
  vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},
{
  type = "tile",
  name = "stone-path-purple",
  needs_correction = false,
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-path-purple"},
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  collision_mask = {"ground-tile"},
  walking_speed_modifier = 1.3,
  layer = 83,
  decorative_removal_probability = 1.15,
  variants = tile_variant("stone-path", "purple"),
  walking_sound =
  {
    {
      filename = "__base__/sound/walking/concrete-01.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-02.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-03.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-04.ogg",
      volume = 1.2
    }
  },
  map_color={r=100, g=0, b=100},
  ageing=0,
  vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},
{
  type = "tile",
  name = "stone-path-red",
  needs_correction = false,
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-path-red"},
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  collision_mask = {"ground-tile"},
  walking_speed_modifier = 1.3,
  layer = 84,
  decorative_removal_probability = 1.15,
  variants = tile_variant("stone-path", "red"),
  walking_sound =
  {
    {
      filename = "__base__/sound/walking/concrete-01.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-02.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-03.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-04.ogg",
      volume = 1.2
    }
  },
  map_color={r=100, g=0, b=0},
  ageing=0,
  vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},
{
  type = "tile",
  name = "stone-path-yellow",
  needs_correction = false,
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-path-yellow"},
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  collision_mask = {"ground-tile"},
  walking_speed_modifier = 1.3,
  layer = 85,
  decorative_removal_probability = 1.15,
  variants = tile_variant("stone-path", "yellow"),
  walking_sound =
  {
    {
      filename = "__base__/sound/walking/concrete-01.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-02.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-03.ogg",
      volume = 1.2
    },
    {
      filename = "__base__/sound/walking/concrete-04.ogg",
      volume = 1.2
    }
  },
  map_color={r=100, g=100, b=0},
  ageing=0,
  vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},

--Old glass tiles

{
    type = "tile",
    name = "express-tile",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "express-tile"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 5,
    layer = 61,
    decorative_removal_probability = 0.9,
    variants =
    {
      main =
      {
        {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/express1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/express2.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/express4.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner =
      {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-side.png",
        count = 8
      },
      u_transition =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-u.png",
        count = 8
      },
      o_transition =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-o.png",
        count = 1
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
      }
    },
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
},
{
    type = "tile",
    name = "glass-tile",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "glass-tile"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.8,
    layer = 61,
    decorative_removal_probability = 0.9,
    variants =
    {
      main =
      {
        {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass2.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass4.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner =
      {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
          picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-side.png",
        count = 8
      },
      u_transition =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-u.png",
        count = 8
      },
      o_transition =
      {
        picture = "__Darkstar_utilities__/graphics/tiles/other-paths/glass-o.png",
        count = 1
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
      }
    },
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
},
	})
