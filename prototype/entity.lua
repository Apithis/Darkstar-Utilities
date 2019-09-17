
      local lab_inputs =
      {
        "automation-science-pack",
        "logistic-science-pack",
      }
      
      if not data.is_demo then
        local extra_lab_inputs =
        {
          "chemical-science-pack",
          "military-science-pack",
          "production-science-pack",
          "utility-science-pack",
          "space-science-pack",
          "neural-science-pack"
        }
      
        for _, item in pairs(extra_lab_inputs) do
          table.insert(lab_inputs, item)
        end
      end
  
  data:extend(
  {
    {
      type = "lab",
      name = "lab",
      icon = "__base__/graphics/icons/lab.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {mining_time = 0.2, result = "lab"},
      max_health = 150,
      corpse = "lab-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
      on_animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/lab/lab.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/lab/hr-lab.png",
              width = 194,
              height = 174,
              frame_count = 33,
              line_length = 11,
              animation_speed = 1 / 3,
              shift = util.by_pixel(0, 1.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/lab/lab-integration.png",
            width = 122,
            height = 81,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
              width = 242,
              height = 162,
              frame_count = 1,
              line_length = 1,
              repeat_count = 33,
              animation_speed = 1 / 3,
              shift = util.by_pixel(0, 15.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/lab/lab-shadow.png",
            width = 122,
            height = 68,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
              width = 242,
              height = 136,
              frame_count = 1,
              line_length = 1,
              repeat_count = 33,
              animation_speed = 1 / 3,
              shift = util.by_pixel(13, 11),
              scale = 0.5,
              draw_as_shadow = true
            }
          }
        }
      },
      off_animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/lab/lab.png",
            width = 98,
            height = 87,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/lab/hr-lab.png",
              width = 194,
              height = 174,
              frame_count = 1,
              shift = util.by_pixel(0, 1.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/lab/lab-integration.png",
            width = 122,
            height = 81,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
              width = 242,
              height = 162,
              frame_count = 1,
              shift = util.by_pixel(0, 15.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/lab/lab-shadow.png",
            width = 122,
            height = 68,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
              width = 242,
              height = 136,
              frame_count = 1,
              shift = util.by_pixel(13, 11),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/lab.ogg",
          volume = 0.7
        },
        apparent_volume = 1
      },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input"
      },
      energy_usage = "60kW",
      researching_speed = 1,
      inputs = lab_inputs,
      module_specification =
      {
        module_slots = 2,
        module_info_icon_shift = {0, 0.9}
      }
    },
    {
      type = "highlight-box",
      name = "highlight-box"
    },
    {
      type = "character",
      name = "character",
      icon = "__base__/graphics/icons/character.png",
      icon_size = 32,
      flags = {"placeable-off-grid", "breaths-air", "not-repairable", "not-on-map", "not-flammable"},
      max_health = 250,
      alert_when_damaged = false,
      healing_per_tick = 0.15,
      collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
      selection_box = {{-0.4, -1.4}, {0.4, 0.2}},
      hit_visualization_box = {{-0.2, -1.1}, {0.2, 0.2}},
      sticker_box = {{-0.2, -1}, {0.2, 0}},
      crafting_categories = {"crafting"},
      mining_categories = {"basic-solid"},
      character_corpse = "character-corpse",
      inventory_size = 80,
      build_distance = 10,
      drop_item_distance = 10,
      reach_distance = 10,
      item_pickup_distance = 1,
      loot_pickup_distance = 2,
      enter_vehicle_distance = 3,
      reach_resource_distance = 2.7,
      ticks_to_keep_gun = 600,
      ticks_to_keep_aiming_direction = 100,
      --ticks you need to wait after firing a weapon or taking damage to get out of combat and get healed
      ticks_to_stay_in_combat = 600,
      damage_hit_tint = {r = 1, g = 0, b = 0, a = 0},
      running_speed = 0.15,
      distance_per_frame = 0.13,
      maximum_corner_sliding_distance = 0.7,
      subgroup = "creatures",
      order="a",
      eat =
      {
        {
          filename = "__base__/sound/eat.ogg",
          volume = 1
        }
      },
      heartbeat =
      {
        {
          filename = "__base__/sound/heartbeat.ogg"
        }
      },
      tool_attack_result =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
              type = "damage",
              damage = { amount = 8 , type = "physical"}
          }
        }
      },
  
      animations =
      {
        {
          idle =
          {
            layers =
            {
              character_animations.level1.idle,
              character_animations.level1.idle_mask,
              character_animations.level1.idle_shadow
            }
          },
          idle_with_gun =
          {
            layers =
            {
              character_animations.level1.idle_gun,
              character_animations.level1.idle_gun_mask,
              character_animations.level1.idle_gun_shadow
            }
          },
          mining_with_tool =
          {
            layers =
            {
              character_animations.level1.mining_tool,
              character_animations.level1.mining_tool_mask,
              character_animations.level1.mining_tool_shadow
            }
          },
          running_with_gun =
          {
            layers =
            {
              character_animations.level1.running_gun,
              character_animations.level1.running_gun_mask,
              character_animations.level1.running_gun_shadow
            }
          },
          running =
          {
            layers =
            {
              character_animations.level1.running,
              character_animations.level1.running_mask,
              character_animations.level1.running_shadow
            }
          }
        },
        {
          -- heavy-armor is not in the demo
          armors = data.is_demo and {"light-armor"} or {"light-armor", "heavy-armor"},
          idle =
          {
            layers =
            {
              character_animations.level1.idle,
              character_animations.level1.idle_mask,
              character_animations.level2addon.idle,
              character_animations.level2addon.idle_mask,
              character_animations.level1.idle_shadow
            }
          },
          idle_with_gun =
          {
            layers =
            {
              character_animations.level1.idle_gun,
              character_animations.level1.idle_gun_mask,
              character_animations.level2addon.idle_gun,
              character_animations.level2addon.idle_gun_mask,
              character_animations.level1.idle_gun_shadow
            }
          },
          mining_with_tool =
          {
            layers =
            {
              character_animations.level1.mining_tool,
              character_animations.level1.mining_tool_mask,
              character_animations.level2addon.mining_tool,
              character_animations.level2addon.mining_tool_mask,
              character_animations.level1.mining_tool_shadow
            }
          },
          running_with_gun =
          {
            layers =
            {
              character_animations.level1.running_gun,
              character_animations.level1.running_gun_mask,
              character_animations.level2addon.running_gun,
              character_animations.level2addon.running_gun_mask,
              character_animations.level1.running_gun_shadow
            }
          },
          running =
          {
            layers =
            {
              character_animations.level1.running,
              character_animations.level1.running_mask,
              character_animations.level2addon.running,
              character_animations.level2addon.running_mask,
              character_animations.level1.running_shadow
            }
          }
        },
        {
          -- modular armors are not in the demo
          armors = data.is_demo and {} or {"modular-armor", "power-armor", "power-armor-mk2", "power-armor-mk3"},
          idle =
          {
            layers =
            {
              character_animations.level1.idle,
              character_animations.level1.idle_mask,
              character_animations.level3addon.idle,
              character_animations.level3addon.idle_mask,
              character_animations.level1.idle_shadow
            }
          },
          idle_with_gun =
          {
            layers =
            {
              character_animations.level1.idle_gun,
              character_animations.level1.idle_gun_mask,
              character_animations.level3addon.idle_gun,
              character_animations.level3addon.idle_gun_mask,
              character_animations.level1.idle_gun_shadow
            }
          },
          mining_with_tool =
          {
            layers =
            {
              character_animations.level1.mining_tool,
              character_animations.level1.mining_tool_mask,
              character_animations.level3addon.mining_tool,
              character_animations.level3addon.mining_tool_mask,
              character_animations.level1.mining_tool_shadow
            }
          },
          running_with_gun =
          {
            layers =
            {
              character_animations.level1.running_gun,
              character_animations.level1.running_gun_mask,
              character_animations.level3addon.running_gun,
              character_animations.level3addon.running_gun_mask,
              character_animations.level1.running_gun_shadow
            }
          },
          running =
          {
            layers =
            {
              character_animations.level1.running,
              character_animations.level1.running_mask,
              character_animations.level3addon.running,
              character_animations.level3addon.running_mask,
              character_animations.level1.running_shadow
            }
          }
        }
      },
      light =
      {
        {
          minimum_darkness = 0.3,
          intensity = 0.4,
          size = 25,
          color = {r=1.0, g=1.0, b=1.0}
        },
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "extra-high",
            flags = { "light" },
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {0, -13},
          size = 2,
          intensity = 0.9,
          color = {r=1.0, g=1.0, b=1.0}
        }
      },
      mining_speed = 0.5,
      mining_with_tool_particles_animation_positions = {19},
      running_sound_animation_positions = {5, 16},
      footstep_particle_triggers =
      {
        {
          tiles = { "water-shallow" },
  
          type = "create-particle",
          repeat_count = 5,
          entity_name = "shallow-water-droplet-particle",
          initial_height = 0.2,
          speed_from_center = 0.01,
          speed_from_center_deviation = 0.05,
          initial_vertical_speed = 0.02,
          initial_vertical_speed_deviation = 0.05,
          offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
        },
        {
          tiles = { "water-mud" },
  
          type = "create-particle",
          repeat_count = 5,
          entity_name = "shallow-water-droplet-particle",
          initial_height = 0.2,
          speed_from_center = 0.01,
          speed_from_center_deviation = 0.05,
          initial_vertical_speed = 0.02,
          initial_vertical_speed_deviation = 0.05,
          offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
        }
      }
    },
  
--[[
  {
    type = "electric-energy-interface",
    name = "hydro-electric-generator",
    icon = "__Darkstar_utilities__/graphics/entity/hydro.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    collision_mask = { "ground-tile", "object-layer" },
    fluid_box_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_test = { "ground-tile" },
    minable = {hardness = 0.2, mining_time = 0.5, result = "hydro-electric-generator"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
		selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
		drawing_box = {{-0.5, -3}, {3.2, 0.5}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "30kW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/hydro.png",
      priority = "high",
      width = 129,
      height = 140,
      shift = {0, -0},
      scale = 0.5,
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },
  ]]--
  {
    type = "electric-energy-interface",
    name = "geothermal-generator",
    icon = "__Darkstar_utilities__/graphics/icons/geothermal-generator2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "geothermal-generator"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
		selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
		drawing_box = {{-0.5, -3}, {3.2, 0.5}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "120kW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/geothermal-generator.png",
      priority = "high",
      width = 131,
      height = 144,
      shift = {0.9, -1}
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "geothermal-generator-mk2",
    icon = "__Darkstar_utilities__/graphics/icons/geothermal-generator-mk2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "geothermal-generator-mk2"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
		selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
		drawing_box = {{-0.5, -3}, {3.2, 0.5}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "500KW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/geothermal-generator-mk2.png",
      priority = "high",
      width = 131,
      height = 144,
      shift = {0.9, -1}
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "geothermal-generator-mk3",
    icon = "__Darkstar_utilities__/graphics/icons/geothermal-generator-mk3.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "geothermal-generator-mk3"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
		selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
		drawing_box = {{-0.5, -3}, {3.2, 0.5}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "1000kW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/geothermal-generator-mk3.png",
      priority = "high",
      width = 131,
      height = 144,
      shift = {0.9, -1}
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "think-tank",
    icon = "__Darkstar_utilities__/graphics/icons/think-tank.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "think-tank"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-8.5, -8.5}, {3.3, 3.3}},
		selection_box = {{-8.5, -8.5}, {3.3, 3.3}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "850MW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/think-tank2.png",
      priority = "high",
      width = 600,
      height = 600,
      shift = {0.9, -1}
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
        volume = 0.0
      },
      light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}},
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "think-tank-mk2",
    icon = "__Darkstar_utilities__/graphics/icons/think-tank2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "think-tank-mk2"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-17, -17}, {6.6, 6.6}},
		selection_box = {{-17, -17}, {6.6, 6.6}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "7GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "5GW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/think-tank.png",
      priority = "high",
      width = 1200,
      height = 1200,
      shift = {1.8, -2}
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
        volume = 1
      },
      idle_sound =
      {
        filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
        volume = 0.1
      },
      light = {intensity = 0.4, size = 24, shift = {0.0, 1.0}},
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "think-tank-mk3",
    icon = "__Darkstar_utilities__/graphics/icons/think-tank3.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "think-tank-mk3"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-17, -17}, {6.6, 6.6}},
		selection_box = {{-17, -17}, {6.6, 6.6}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "24GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "50GW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/think-tank3.png",
      priority = "high",
      width = 1200,
      height = 1200,
      shift = {1.8, -2}
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
        volume = 1
      },
      idle_sound =
      {
        filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
        volume = 0.1
      },
      light = {intensity = 0.4, size = 24, shift = {0.0, 1.0}},
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "dyson",
    icon = "__Darkstar_utilities__/graphics/icons/dyson-sphere-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "dyson"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "9YJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "15TW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/dyson-sphere.png",
      priority = "high",
      width = 508,
      height = 304,
      shift = {3.44, -2.5},
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },

  {
    type = "electric-energy-interface",
    name = "multiverse-tear",
    icon = "__Darkstar_utilities__/graphics/icons/multiverse-tear-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "multiverse-tear"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "900YJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "1000000YW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/multiverse-tear.png",
      priority = "high",
      width = 508,
      height = 304,
      shift = {3.44, -2.5},
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },

{
    type = "electric-energy-interface",
    name = "interstellar-dominion",
    icon = "__Darkstar_utilities__/graphics/icons/interstellar-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "interstellar-dominion"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "900YJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "100000YW",
      render_no_power_icon = false
    },
    energy_production = "0kW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/interstellar.png",
      priority = "high",
      width = 508,
      height = 304,
      shift = {3.44, -2.5},
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      idle_sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.0
      },
      max_sounds_per_type = 5
    },
  },

   { 
    type = "car",
    name = "dark-pulse",
    icon = "__Darkstar_utilities__/graphics/icons/dark-pulse-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    has_belt_immunity = false,
    minable = {mining_time = 1, result = "dark-pulse"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    terrain_friction_modifier = 0,
    resistances =
    {
      {
        type = "fire",
        decrease = 2,
        percent = 50
      },
      {
        type = "physical",
        decrease = 2,
        percent = 30
      },
      {
        type = "impact",
        decrease = 10,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 2,
        percent = 30
      },
      {
        type = "acid",
        decrease = 1,
        percent = 20
      }
    },
		collision_box = {{-0.9, -2.6}, {0.9, 2.6}},
		collision_mask = {},
		selection_box = {{-0.9, -2.6}, {0.9, 2.6}},
    effectivity = 0.7,
    braking_power = "450kW",
    burner =
    {
      effectivity = 0.1,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
		consumption = "650kW",
    friction = 0.003,
		light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0, -12},
        size = 2,
        intensity = 2.8
      }
    },
		render_layer = "air-object", 
	  final_render_layer = "air-object",
		animation =
    {
			    filename = "__Darkstar_utilities__/graphics/entity/dark-pulse.png",
          priority = "high",
				  width = 672,
          height = 672,
          frame_count = 1,
          direction_count = 36,
					line_length = 6,
					line_height = 6,
          shift = {0, 0},
          max_advance = 1,
          scale = 0.5
    },
      sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
		  sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
	  stop_trigger_speed = 0.2,
      acceleration_per_energy = 0.35,
      breaking_speed = 0.09,
	  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.01,
	  tank_driving = true,
      weight = 750,
      inventory_size = 30,
    guns = { "assult-rifle"},
    equipment_grid = "vehicle-equipment-grid2",
  },

   { 
    type = "car",
    name = "deep-hold",
    icon = "__Darkstar_utilities__/graphics/icons/deep-hold-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    has_belt_immunity = false,
    minable = {mining_time = 1, result = "deep-hold"},
    max_health = 2000,
    corpse = "medium-remnants",
    dying_explosion = "ship-explosion",
    energy_per_hit_point = 0.5,
    terrain_friction_modifier = 0,
    resistances =
    {
      {
        type = "fire",
        decrease = 2,
        percent = 50
      },
      {
        type = "physical",
        decrease = 2,
        percent = 30
      },
      {
        type = "impact",
        decrease = 10,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 2,
        percent = 30
      },
      {
        type = "acid",
        decrease = 1,
        percent = 20
      }
    },
		collision_box = {{-6, -14}, {6, 14}},
		collision_mask = {},
		selection_box = {{-6, -14}, {6, 14}},
    effectivity = 0.04,
    braking_power = "250kW",
    burner =
    {
      effectivity = 0.05,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
		consumption = "650kW",
    friction = 0.003,
		light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-3.6, -60},
        size = 8,
        intensity = 2.8
      }
    },
		render_layer = "air-object", 
	  final_render_layer = "air-object",
		animation =
    {
			    filename = "__Darkstar_utilities__/graphics/entity/deep-hold.png",
          priority = "high",
				  width = 672,
          height = 672,
          frame_count = 1,
          direction_count = 36,
					line_length = 6,
					line_height = 6,
          shift = {0, 0},
          max_advance = 1,
          scale = 2
    },
      sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
		  sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
	  stop_trigger_speed = 0.2,
      acceleration_per_energy = 0.01,
      breaking_speed = 0.02,
	  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.005,
	  tank_driving = true,
      weight = 10050,
      inventory_size = 5000,
    equipment_grid = "vehicle-equipment-grid",
    
  },

  { 
    type = "car",
    name = "end-game",
    icon = "__Darkstar_utilities__/graphics/icons/end-game-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    has_belt_immunity = false,
    minable = {mining_time = 1, result = "end-game"},
    max_health = 5000,
    corpse = "medium-remnants",
    dying_explosion = "ship-explosion",
    energy_per_hit_point = 0.5,
    terrain_friction_modifier = 0,
    resistances =
    {
      {
        type = "fire",
        decrease = 2,
        percent = 50
      },
      {
        type = "physical",
        decrease = 2,
        percent = 30
      },
      {
        type = "impact",
        decrease = 10,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 2,
        percent = 30
      },
      {
        type = "acid",
        decrease = 1,
        percent = 20
      }
    },
		collision_box = {{-0.9, -2.6}, {0.9, 2.6}},
		collision_mask = {},
		selection_box = {{-2.4, -4.6}, {2, 4.6}},
    shift = {-0.1, -55},
    effectivity = 1,
    braking_power = "450kW",
    burner =
    {
      effectivity = 0.00001,
      fuel_inventory_size = 10,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
		consumption = "650kW",
    friction = 0.003,
		light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -65},
        size = 8,
        intensity = 2.8
      }
    },
		render_layer = "air-object", 
	  final_render_layer = "air-object",
		animation =
    {
			    filename = "__Darkstar_utilities__/graphics/entity/end-game.png",
          priority = "high",
				  width = 672,
          height = 672,
          frame_count = 1,
          direction_count = 36,
					line_length = 6,
					line_height = 6,
          shift = {0, 0},
          max_advance = 1,
          scale = 3
    },
      sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
		  sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
	  stop_trigger_speed = 0.2,
      acceleration_per_energy = 0.95,
      breaking_speed = 0.09,
	  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.01,
	  tank_driving = true,
      weight = 750,
      inventory_size = 80,
    guns = { "assult-rifle", "railgun-mk2", "end-game-rifle", "end-game-rifle-2"},
    equipment_grid = "vehicle-equipment-grid3",
  },

  { 
    type = "car",
    name = "nautilus",
    icon = "__Darkstar_utilities__/graphics/icons/nautilus-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    has_belt_immunity = false,
    minable = {mining_time = 1, result = "nautilus"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "ship-explosion",
    energy_per_hit_point = 0.5,
    terrain_friction_modifier = 0,
    resistances =
    {
      {
        type = "fire",
        decrease = 2,
        percent = 50
      },
      {
        type = "physical",
        decrease = 2,
        percent = 30
      },
      {
        type = "impact",
        decrease = 10,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 2,
        percent = 30
      },
      {
        type = "acid",
        decrease = 1,
        percent = 20
      }
    },
		collision_box = {{-0.9, -2.6}, {0.9, 2.6}},
		collision_mask = {},
		selection_box = {{-4.5, -6}, {3.6, 0}},
    shift = {-0.1, -55},
    effectivity = 0.01,
    braking_power = "4050kW",
    burner =
    {
      effectivity = 0.0001,
      fuel_inventory_size = 10,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
		consumption = "650kW",
    friction = 0.003,
		light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -60},
        size = 8,
        intensity = 2.8
      }
    },
		render_layer = "air-object", 
	  final_render_layer = "air-object",
		animation =
    {
			    filename = "__Darkstar_utilities__/graphics/entity/nautilus.png",
          priority = "high",
				  width = 672,
          height = 672,
          frame_count = 1,
          direction_count = 36,
					line_length = 6,
					line_height = 6,
          shift = {0, 0},
          max_advance = 1,
          scale =2,
    },
      sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
		  sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
	  stop_trigger_speed = 0.2,
      acceleration_per_energy = 0.95,
      breaking_speed = 0.09,
	  open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.01,
	  tank_driving = true,
      weight = 25,
      inventory_size = 80,
    guns = { "health-rifle",},
    equipment_grid = "vehicle-equipment-grid3",
  },

  {
    type = "explosion",
    name = "explosion-heal",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Darkstar_utilities__/graphics/entity/health-explosion.png",
        priority = "high",
        width = 64,
        height = 59,
        frame_count = 16,
        animation_speed = 0.9
      },
      {
        filename = "__Darkstar_utilities__/graphics/entity/health-explosion.png",
        priority = "high",
        width = 64,
        height = 57,
        frame_count = 16,
        animation_speed = 0.5
      },
      {
        filename = "__Darkstar_utilities__/graphics/entity/health-explosion.png",
        priority = "high",
        width = 64,
        height = 49,
        frame_count = 16,
        animation_speed = 0.2
      },
      {
        filename = "__Darkstar_utilities__/graphics/entity/health-explosion.png",
        priority = "high",
        width = 64,
        height = 51,
        frame_count = 16,
        animation_speed = 0.7
      }
    },
    light = {intensity = 1, size = 20, color = {r=1.0, g=1.0, b=1.0}},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound =
    {
      aggregation =
      {
        max_count = 1,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/small-explosion-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/fight/small-explosion-2.ogg",
          volume = 0.75
        }
      }
    }
  },

   {
    type = "locomotive",
    name = "locomotive-mk2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "locomotive-mk2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    drawing_box = {{-1, -4}, {1, 3}},
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 2000,
    max_speed = 2.0,
    max_power = "600kW",
    reversing_power_modifier = 1.6,
    braking_force = 10000,
    friction_force = 0.50,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6,
        color = {r = 1.0, g = 0.9, b = 0.9}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6,
        color = {r = 1.0, g = 0.9, b = 0.9}
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          slice = 4,
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          hr_version =
          {
            priority = "very-low",
            slice = 4,
            width = 474,
            height = 458,
            direction_count = 256,
            allow_low_quality_rotation = true,
            filenames =
            {
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-1.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-2.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-3.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-4.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-5.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-6.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-7.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-8.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-9.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-10.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-11.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-12.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-13.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-14.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-15.png",
              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-16.png"
            },
            line_length = 4,
            lines_per_file = 4,
            shift = {0.0, -0.5},
            scale = 0.5
            }
        },
        {
          priority = "very-low",
          flags = { "mask" },
          slice = 4,
          width = 236,
          height = 228,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true,
          hr_version =
            {
              priority = "very-low",
              flags = { "mask" },
              slice = 4,
              width = 472,
              height = 456,
              direction_count = 256,
              allow_low_quality_rotation = true,
              filenames =
              {
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-1.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-2.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-3.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-4.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-5.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-6.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-7.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-8.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-9.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-10.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-11.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-12.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-13.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-14.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-15.png",
                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-16.png"
              },
              line_length = 4,
              lines_per_file = 4,
              shift = {0.0, -0.5},
              apply_runtime_tint = true,
              scale = 0.5
            }
        },
        {
          priority = "very-low",
          slice = 4,
          flags = { "shadow" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger =
    {
      -- left side
      {
        type = "create-trivial-smoke",
        repeat_count = 125,
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
      },
      -- right side
      {
        type = "create-trivial-smoke",
        repeat_count = 125,
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
      },
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
--[[
  {
    type = "ammo-turret",
    name = "assult-turret",
    icon = "__base__/graphics/icons/gun-turret.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "assult-turret"},
    max_health = 800,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.055,
    preparing_speed = 0.38,
    folding_speed = 0.28,
    dying_explosion = "medium-explosion",
    inventory_size = 2,
    automated_ammo_count = 10,
    attacking_speed = 2,
    alert_when_attacking = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    folded_animation =
    {
      layers =
      {
        gun_turret_extension{frame_count=1, line_length = 1},
        gun_turret_extension_mask{frame_count=1, line_length = 1},
        gun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        gun_turret_extension{},
        gun_turret_extension_mask{},
        gun_turret_extension_shadow{}
      }
    },
    prepared_animation = gun_turret_attack{frame_count=1},
    attacking_animation = gun_turret_attack{},
    folding_animation =
    {
      layers =
      {
        gun_turret_extension{run_mode = "backward"},
        gun_turret_extension_mask{run_mode = "backward"},
        gun_turret_extension_shadow{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
          priority = "high",
          width = 90,
          height = 75,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.046875},
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 52,
          height = 47,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.234375},
          apply_runtime_tint = true
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet-mk2",
      cooldown = 3,
      projectile_creation_distance = 1.39375,
      projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {-0.0625, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 38,
      sound = make_heavy_gunshot_sounds(),
    },

    call_for_help_radius = 40
  },

  {
    type = "ammo-turret",
    name = "sniper-turret",
    icon = "__base__/graphics/icons/gun-turret.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "sniper-turret"},
    max_health = 800,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.055,
    preparing_speed = 0.58,
    folding_speed = 0.58,
    dying_explosion = "medium-explosion",
    inventory_size = 2,
    automated_ammo_count = 10,
    attacking_speed = 5.,
    alert_when_attacking = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    folded_animation =
    {
      layers =
      {
        gun_turret_extension{frame_count=1, line_length = 1},
        gun_turret_extension_mask{frame_count=1, line_length = 1},
        gun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        gun_turret_extension{},
        gun_turret_extension_mask{},
        gun_turret_extension_shadow{}
      }
    },
    prepared_animation = gun_turret_attack{frame_count=1},
    attacking_animation = gun_turret_attack{},
    folding_animation =
    {
      layers =
      {
        gun_turret_extension{run_mode = "backward"},
        gun_turret_extension_mask{run_mode = "backward"},
        gun_turret_extension_shadow{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
          priority = "high",
          width = 90,
          height = 75,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.046875},
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 52,
          height = 47,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.234375},
          apply_runtime_tint = true
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "sniper-round",
      cooldown = 102,
      projectile_creation_distance = 1.39375,
      projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 2.1,
        speed_deviation = 0.03,
        center = {-0.0625, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 175,
      sound = make_heavy_gunshot_sounds(),
    },

    call_for_help_radius = 40
  },

  {
    type = "ammo-turret",
    name = "sniper-turret-mk2",
    icon = "__base__/graphics/icons/gun-turret.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "sniper-turret-mk2"},
    max_health = 800,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.055,
    preparing_speed = 0.58,
    folding_speed = 0.58,
    dying_explosion = "medium-explosion",
    inventory_size = 2,
    automated_ammo_count = 10,
    attacking_speed = 10.,
    alert_when_attacking = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    folded_animation =
    {
      layers =
      {
        gun_turret_extension{frame_count=1, line_length = 1},
        gun_turret_extension_mask{frame_count=1, line_length = 1},
        gun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        gun_turret_extension{},
        gun_turret_extension_mask{},
        gun_turret_extension_shadow{}
      }
    },
    prepared_animation = gun_turret_attack{frame_count=1},
    attacking_animation = gun_turret_attack{},
    folding_animation =
    {
      layers =
      {
        gun_turret_extension{run_mode = "backward"},
        gun_turret_extension_mask{run_mode = "backward"},
        gun_turret_extension_shadow{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
          priority = "high",
          width = 90,
          height = 75,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.046875},
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 52,
          height = 47,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.234375},
          apply_runtime_tint = true
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "sniper-round",
      cooldown = 602,
      projectile_creation_distance = 1.39375,
      projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 20.1,
        speed_deviation = 0.03,
        center = {-0.0625, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 975,
      sound = make_heavy_gunshot_sounds(),
    },

    call_for_help_radius = 40
  },

  {
    type = "electric-turret",
    name = "laser-turret-mk2",
    icon = "__base__/graphics/icons/laser-turret.png",
    icon_size = 32,
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "laser-turret-mk2" },
    max_health = 1000,
    corpse = "medium-remnants",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    rotation_speed = 0.51,
    preparing_speed = 0.15,
    dying_explosion = "medium-explosion",
    folding_speed = 0.15,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "8001kJ",
      input_flow_limit = "9600kW",
      drain = "84kW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        laser_turret_extension{frame_count=1, line_length = 1},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        laser_turret_extension{},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
          line_length = 8,
          width = 68,
          height = 68,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {-0.03125, -1}
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
          flags = { "mask" },
          line_length = 8,
          width = 54,
          height = 44,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.03125, -1.3125},
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
          line_length = 8,
          width = 88,
          height = 52,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          draw_as_shadow = true,
          shift = {1.5, 0}
        }
      }
    },
    folding_animation =
    {
      layers =
      {
        laser_turret_extension{run_mode = "backward"},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
          priority = "high",
          width = 98,
          height = 82,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0.015625, 0.03125}
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 54,
          height = 46,
          axially_symmetrical = false,
          apply_runtime_tint = true,
          direction_count = 1,
          frame_count = 1,
          shift = {-0.046875, -0.109375},
        },
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 40,
      projectile_center = {-0.09375, -0.2},
      projectile_creation_distance = 1.4,
      range = 44,
      damage_modifier = 8,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "8001kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 0.65
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    },
    call_for_help_radius = 40
  },
  --]]
  {
    type = "furnace",
    name = "terra-electric-furnace",
    icon = "__Darkstar_utilities__/graphics/icons/electric-furnace2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "terra-electric-furnace"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 6, size = 15},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting"},
    result_inventory_size = 2,
    crafting_speed = 4,
    energy_usage = "200kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 3,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },

  {
    type = "furnace",
    name = "furnace-house",
    icon = "__Darkstar_utilities__/graphics/icons/smelting-warehouse-icon.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "furnace-house"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 2, size = 40},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    logistic_mode = "passive-provider",
    crafting_speed = 20,
    energy_usage = "45MW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 20,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-furnace.png",
      priority = "extra-high",
      frame_count = 1,
      width = 550,
      height = 550,
      shift = {0, -0.85}
    },
    working_visualisations =
      {
    animation =
       {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-furnace.png",
      priority = "extra-high",
      frame_count = 1,
      animation_speed = 0,
      width = 550,
      height = 550,
      shift = {0, -0.85}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
    fast_replaceable_group = "furnace"
  },

  {
    type = "furnace",
    name = "furnace-house-mk2",
    icon = "__Darkstar_utilities__/graphics/icons/smelting-warehouse-icon.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "furnace-house-mk2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 2, size = 40},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
	collision_box = {{-17, -10.0}, {6.0, 15.0}},
	selection_box = {{-17, -10.0}, {6.0, 15.0}},
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    logistic_mode = "passive-provider",
    crafting_speed = 8,
    energy_usage = "125MW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 5.805,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-furnace2.png",
      priority = "extra-high",
      frame_count = 1,
      width = 1100,
      height = 1100,
      shift = {0, -0.85}
    },
    working_visualisations =
      {
    animation =
       {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-furnace2.png",
      priority = "extra-high",
      frame_count = 1,
      animation_speed = 0,
      width = 1100,
      height =1100,
      shift = {0, -0.85}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
    fast_replaceable_group = "furnace"
  },

  {
    type = "furnace",
    name = "air-filter",
    icon = "__Darkstar_utilities__/graphics/icons/filter-icon.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-filter"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 6, size = 15},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = { "speed",},
    crafting_categories = {"filters"},
    result_inventory_size = 1,
    crafting_speed = 4,
    energy_usage = "2kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -12,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/filter.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-heater3.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },

   {
    type = "furnace",
    name = "air-filter-mk2",
    icon = "__Darkstar_utilities__/graphics/icons/filter-icon-2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-filter-mk2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 20},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = { "speed",},
    crafting_categories = {"filters"},
    result_inventory_size = 1,
    crafting_speed = 8,
    energy_usage = "10kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -60,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/filter2.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-heater2.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },

  {
    type = "furnace",
    name = "air-filter-mk3",
    icon = "__Darkstar_utilities__/graphics/icons/filter-icon-3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-filter-mk3"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 25},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"speed",},
    crafting_categories = {"filters"},
    result_inventory_size = 1,
    crafting_speed = 12,
    energy_usage = "25kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -300,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/filter3.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-heater4.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },

   {
    type = "furnace",
    name = "air-filter-mk4",
    icon = "__Darkstar_utilities__/graphics/icons/filter-icon-4.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-filter-mk4"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 40},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = { "speed",},
    crafting_categories = {"filters"},
    result_inventory_size = 1,
    crafting_speed = 45,
    energy_usage = "60kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -1500,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/filter4.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-heater4.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },

  {
    type = "furnace",
    name = "air-filter-mk5",
    icon = "__Darkstar_utilities__/graphics/icons/filter-icon-5.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-filter-mk5"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 40},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = { "speed",},
    crafting_categories = {"filters"},
    result_inventory_size = 1,
    crafting_speed = 35,
    energy_usage = "100kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -7500,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/filter5.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-heater5.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/terra-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },
  
  {
    type = "loader",
    name = "terra-loader",
    icon = "__base__/graphics/icons/loader.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-loader"},
    max_health = 170,
    filter_count = 5,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    animation_speed_coefficient = 32,
    belt_animation_set = fast_belt_animation_set,
    fast_replaceable_group = "loader",
    speed = 1.99375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/loader/loader-structure.png",
          priority = "extra-high",
          width = 64,
          height = 64
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/loader/loader-structure.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          y = 64
        }
      }
    }
  },
  
  {
    type = "splitter",
    name = "terra-splitter",
    icon = "__base__/graphics/icons/express-splitter.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-splitter"},
    max_health = 190,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.59375,
    structure =
    {
      north =
      {
        filename = "__base__/graphics/entity/express-splitter/express-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          filename = "__base__/graphics/entity/express-splitter/hr-express-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/express-splitter/express-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 80,
        shift = util.by_pixel(4, -6),
        hr_version =
        {
          filename = "__base__/graphics/entity/express-splitter/hr-express-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 160,
          shift = util.by_pixel(4, -6),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/express-splitter/express-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = "__base__/graphics/entity/express-splitter/hr-express-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/express-splitter/express-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 76,
        shift = util.by_pixel(6, -4),
        hr_version =
        {
          filename = "__base__/graphics/entity/express-splitter/hr-express-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 150,
          shift = util.by_pixel(5, -4),
          scale = 0.5
        }
      }
    }
  },
  
  {
    type = "pump",
    name = "pump-mk2",
    icon = "__base__/graphics/icons/pump.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pump-mk2"},
    max_health = 180,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.79}, {0.29, 0.79}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fluid_box =
    {
      base_area = 1,
      height = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type="output" },
        { position = {0, 1.5}, type="input" }
      }
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "190kW",
    pumping_speed = 240,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    animations =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north.png",
        width = 53,
        height = 79,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(8.000, 7.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north.png",
          width = 103,
          height = 164,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east.png",
        width = 66,
        height = 60,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 4),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east.png",
          width = 130,
          height = 109,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
        }
      },

      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south.png",
        width = 62,
        height = 87,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(13.5, 0.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south.png",
          width = 114,
          height = 160,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west.png",
        width = 69,
        height = 51,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0.5, -0.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west.png",
          width = 131,
          height = 111,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
        }
      }
    },

    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,

    fluid_wagon_connector_graphics = require("prototypes.entity.pump-connector"),

    fluid_animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
        apply_runtime_tint = true,
        width = 20,
        height = 13,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-0.500, -14.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north-liquid.png",
          apply_runtime_tint = true,
          width = 38,
          height = 22,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-0.250, -16.750)
        }
      },

      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(6.000, -8.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east-liquid.png",
          width = 35,
          height = 46,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(6.250, -8.500)
        }
      },

      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
        width = 26,
        height = 55,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(3.500, 6.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south-liquid.png",
          width = 38,
          height = 45,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(0.500, -9.250)
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-6.000, -9.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west-liquid.png",
          width = 35,
          height = 47,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-6.500, -9.500)
        }
      }
    },

    glass_pictures =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-glass.png",
        width = 32,
        height = 64,
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north-glass.png",
          width = 64,
          height = 128,
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-glass.png",
        width = 32,
        height = 32,
        shift = util.by_pixel(0.000, -16.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east-glass.png",
          width = 128,
          height = 192,
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-glass.png",
        width = 32,
        height = 64,
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south-glass.png",
          width = 64,
          height = 128,
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-glass.png",
        width = 32,
        height = 96,
        shift = util.by_pixel(0.000, 15.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west-glass.png",
          width = 192,
          height = 192,
          scale = 0.5,
          shift = util.by_pixel(-16.000, 0.000)
        }
      }
    },

    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {
    type = "mining-drill",
    name = "laser-miner",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon1.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "laser-miner"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -4.25, -3.75}, {4.45, 4.45}},
    selection_box = {{ -3.85, -3.85}, {3.65, 3.65}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 481,
        height = 270,
        line_length = 4,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/laser-miner.png",
        frame_count = 28,
        animation_speed = 0.325,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 7,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 20,
      usage_priority = "secondary-input"
    },
    energy_usage = "20MW",
    resource_searching_radius = 4.3,
    vector_to_place_result = {0, -5},
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "neural-miner",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon1.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "neural-miner"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1, -1}, {1, 1}},
    selection_box = {{ -1, -1}, {1, 1}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/neural-miner.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 600,
        height = 600,
        line_length = 5,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/neural-miner.png",
        frame_count = 30,
        animation_speed = 0.325,
        run_mode = "forward",
      }
    },
    mining_speed = 8,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 40,
      usage_priority = "secondary-input"
    },
    energy_usage = "50MW",
    resource_searching_radius = 50,
    vector_to_place_result = {0.5, -1.5},
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "laser-miner2",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon2.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "laser-miner2"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -4.25, -3.75}, {4.45, 4.45}},
    selection_box = {{ -3.85, -3.85}, {3.65, 3.65}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 481,
        height = 270,
        line_length = 4,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/laser-miner2.png",
        frame_count = 28,
        animation_speed = 0.825,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 14,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 40,
      usage_priority = "secondary-input"
    },
    energy_usage = "40MW",
    resource_searching_radius = 4.3,
    vector_to_place_result = {0, -5},
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.8}
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "neural-miner-2",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon1.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "neural-miner-2"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1, -1}, {1, 1}},
    selection_box = {{ -1, -1}, {1, 1}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/neural-miner.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 600,
        height = 600,
        line_length = 5,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/neural-miner-2.png",
        frame_count = 30,
        animation_speed = 0.325,
        run_mode = "forward",
      }
    },
    mining_speed = 12,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 80,
      usage_priority = "secondary-input"
    },
    energy_usage = "100MW",
    resource_searching_radius = 100,
    vector_to_place_result = {0.5, -1.5},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "laser-miner3",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon3.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "laser-miner3"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -4.25, -3.75}, {4.45, 4.45}},
    selection_box = {{ -3.85, -3.85}, {3.65, 3.65}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 481,
        height = 270,
        line_length = 4,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/laser-miner3.png",
        frame_count = 28,
        animation_speed = 0.925,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 21,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 60,
      usage_priority = "secondary-input"
    },
    energy_usage = "60MW",
    resource_searching_radius = 4.3,
    vector_to_place_result = {0, -5},
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.8}
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "neural-miner-3",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon1.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "neural-miner-3"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1, -1}, {1, 1}},
    selection_box = {{ -1, -1}, {1, 1}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/neural-miner.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 600,
        height = 600,
        line_length = 5,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/neural-miner-3.png",
        frame_count = 30,
        animation_speed = 0.325,
        run_mode = "forward",
      }
    },
    mining_speed = 12,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 120,
      usage_priority = "secondary-input"
    },
    energy_usage = "200MW",
    resource_searching_radius = 150,
    vector_to_place_result = {0.5, -1.5},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "laser-miner4",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon4.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "laser-miner4"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -4.25, -3.75}, {4.45, 4.45}},
    selection_box = {{ -3.85, -3.85}, {3.65, 3.65}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 481,
        height = 270,
        line_length = 4,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/laser-miner4.png",
        frame_count = 28,
        animation_speed = 0.825,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 28,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 80,
      usage_priority = "secondary-input"
    },
    energy_usage = "80MW",
    resource_searching_radius = 4.3,
    vector_to_place_result = {0, -5},
    module_specification =
    {
      module_slots = 10,
      module_info_icon_shift = {0, 0.8}
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "neural-miner-4",
    icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon1.png",
    fast_replaceable_group = "mining-drill",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "neural-miner-4"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1, -1}, {1, 1}},
    selection_box = {{ -1, -1}, {1, 1}},
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/neural-miner.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 600,
        height = 600,
        line_length = 5,
        shift = {0.2, -0.2},
        filename = "__Darkstar_utilities__/graphics/entity/laser-miner/neural-miner-4.png",
        frame_count = 30,
        animation_speed = 0.325,
        run_mode = "forward",
      }
    },
    mining_speed = 12,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 300,
      usage_priority = "secondary-input"
    },
    energy_usage = "400MW",
    resource_searching_radius = 200.3,
    vector_to_place_result = {0.5, -1.5},
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  
  -----Rocket
  {
    type = "rocket-silo",
    name = "rocket-silo-2",
    icon = "__base__/graphics/icons/rocket-silo.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"rocket-building"},
    ingredient_count = 3,
    rocket_parts_required = 120,
    crafting_speed = 2,
    rocket_result_inventory_size = 1,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 4.3}
    },
    fixed_recipe = "rocket-part",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {hardness = 0.2, mining_time = 5, result = "rocket-silo-2"},
    max_health = 5000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.2, -4.7}, {4.2, 4.7}},
    selection_box = {{-4.5, -5}, {4.5, 5}},
    hole_clipping_box = { {-2.75, -1.15}, {2.75, 2.25} },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "250kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "rocket-silo-2-rocket",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),

    base_light =
    {
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.25, 1.25},
        size = 1,
        intensity = 1,
        rotation_shift = 0.6,
        color = {r = 0.7, g = 0.9, b = 1.0}
      },
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.25, 1},
        size = 1,
        intensity = 1,
        rotation_shift = 0.5,
        color = {r = 0.7, g = 0.9, b = 1.0}
      }
    },
    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-silo-shadow.png",
      priority = "medium",
      width = 447,
      height = 351,
      draw_as_shadow = true,
      shift = {1.5, 0.5}
    },
    satellite_shadow_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-satellite-shadow.png",
      priority = "medium",
      width = 44,
      height = 22,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      draw_as_shadow = true,
      shift = {7.875, -2.1875}
    },

    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    hole_light_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole-light.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-shadow-over-rocket.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glow.png",
      blend_mode = "additive",
      width = 224,
      height = 128,
      shift = {0, 2}
    },


    door_back_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/04-door-back.png",
      width = 192,
      height = 108,
      shift = {0, 1.53125}
    },
    door_back_open_offset = {1.75, -1.75},
    door_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/05-door-front.png",
      width = 192,
      height = 112,
      shift = {0, 2.0625}
    },
    door_front_open_offset = {-1.75, 1.75},

    base_day_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-day.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },
    base_night_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-night.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },


    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 0}
        }
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 2.8125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 3.75}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 2.8125}
        }
      }
    },
    satellite_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/satellite.png",
      priority = "medium",
      width = 27,
      height = 28,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      shift = {3.3125, -4.82813}
    },

    arm_01_back_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-01-back.png",
      priority = "medium",
      width = 54,
      height = 50,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, -0.875}
    },

    arm_02_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-02-right.png",
      priority = "medium",
      width = 81,
      height = 43,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {2.71875, 0.96875}
    },

    arm_03_front_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/13-arm-front-red-lights-front/arm-03-front.png",
      priority = "medium",
      width = 54,
      height = 70,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, 2.4375}
    },

    base_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/14-silo-front/14-silo-front.png",
      width = 352,
      height = 96,
      shift = {0, 3.5}
    },
    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-alarm.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_on_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-on.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_off_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-off.ogg",
            volume = 1.5
          }
        }
      }
    },
    doors_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-doors.ogg",
            volume = 1.5
          }
        }
      }
    },
    raise_rocket_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-raise-rocket.ogg",
            volume = 1.5
          }
        }
      }
    }
  },
  {
    type = "rocket-silo-rocket",
    name = "rocket-silo-2-rocket",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{-2, -7}, {2, 4}},
    selection_box = {{0, 0}, {0, 0}},
    dying_explosion = "massive-explosion",
    shadow_slave_entity = "rocket-silo-rocket-shadow",
    inventory_size = 1,
    rising_speed = 1 / (7 * 60),
    engine_starting_speed = 1 / (5.5 * 60),
    flying_speed = 2 / (2000 * 60),
    flying_acceleration = 0.01,
    result_items =
    {
      {"laser-quarry3", 1, "asteroid-quarry"}
    },

    glow_light =
    {
      intensity = 1,
      size = 30,
      shift = {0, 1.5},
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    rocket_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/02-11-rocket/02-rocket.png",
      width = 192,
      height = 288,
      shift = {0, 5.5}
    },

    rocket_shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/09-rocket-shadow/09-rocket-shadow.png",
      priority = "medium",
      width = 384,
      height = 128,
      draw_as_shadow = true,
      shift = {-2.5, 2}
    },

    rocket_glare_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glare.png",
      blend_mode = "additive",
      width = 509,
      height = 509,
      shift = {0, 9}
    },
    rocket_smoke_top1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {-1.59375, 7.34375}
    },
    rocket_smoke_top2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {0.46875, 8.28125}
    },
    rocket_smoke_top3_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {1.28125, 7.90625},
    },

    rocket_smoke_bottom1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {-1.65625, 6.71875}
    },
    rocket_smoke_bottom2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {1.65625, 6.71875}
    },
    rocket_flame_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.93,
      shift = {0.04, 10}
    },
    rocket_flame_left_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.345,
      shift = {-1.275, 8.6}
    },
    rocket_flame_left_rotation = 0.0611,

    rocket_flame_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.368,
      shift = {1.25, 8.875}
    },
    rocket_flame_right_rotation = 0.952,


    rocket_rise_offset = {0, -3.5},
    rocket_launch_offset = {0, -256},
    rocket_render_layer_switch_distance = 6.5,
    full_render_layer_switch_distance = 8,
    effects_fade_in_start_distance = 4.5,
    effects_fade_in_end_distance = 8,
    shadow_fade_out_start_ratio = 0.25,
    shadow_fade_out_end_ratio = 0.75,
    rocket_visible_distance_from_center = 3.75,

    flying_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-rocket.ogg",
            volume = 1.8
          },
        }
      },
    }
  },
  
  
  {
    type = "rocket-silo",
    name = "rocket-silo-3",
    icon = "__base__/graphics/icons/rocket-silo.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"rocket-building"},
    ingredient_count = 3,
    rocket_parts_required = 320,
    crafting_speed = 2,
    rocket_result_inventory_size = 1,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 4.3}
    },
    fixed_recipe = "rocket-part",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {hardness = 0.2, mining_time = 5, result = "rocket-silo-3"},
    max_health = 5000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.2, -4.7}, {4.2, 4.7}},
    selection_box = {{-4.5, -5}, {4.5, 5}},
    hole_clipping_box = { {-2.75, -1.15}, {2.75, 2.25} },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "250kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "rocket-silo-3-rocket",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),

    base_light =
    {
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.25, 1.25},
        size = 1,
        intensity = 1,
        rotation_shift = 0.6,
        color = {r = 0.7, g = 0.9, b = 1.0}
      },
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.25, 1},
        size = 1,
        intensity = 1,
        rotation_shift = 0.5,
        color = {r = 0.7, g = 0.9, b = 1.0}
      }
    },
    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-silo-shadow.png",
      priority = "medium",
      width = 447,
      height = 351,
      draw_as_shadow = true,
      shift = {1.5, 0.5}
    },
    satellite_shadow_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-satellite-shadow.png",
      priority = "medium",
      width = 44,
      height = 22,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      draw_as_shadow = true,
      shift = {7.875, -2.1875}
    },

    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    hole_light_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole-light.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-shadow-over-rocket.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glow.png",
      blend_mode = "additive",
      width = 224,
      height = 128,
      shift = {0, 2}
    },


    door_back_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/04-door-back.png",
      width = 192,
      height = 108,
      shift = {0, 1.53125}
    },
    door_back_open_offset = {1.75, -1.75},
    door_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/05-door-front.png",
      width = 192,
      height = 112,
      shift = {0, 2.0625}
    },
    door_front_open_offset = {-1.75, 1.75},

    base_day_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-day.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },
    base_night_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-night.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },


    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 0}
        }
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 2.8125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 3.75}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 2.8125}
        }
      }
    },
    satellite_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/satellite.png",
      priority = "medium",
      width = 27,
      height = 28,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      shift = {3.3125, -4.82813}
    },

    arm_01_back_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-01-back.png",
      priority = "medium",
      width = 54,
      height = 50,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, -0.875}
    },

    arm_02_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-02-right.png",
      priority = "medium",
      width = 81,
      height = 43,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {2.71875, 0.96875}
    },

    arm_03_front_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/13-arm-front-red-lights-front/arm-03-front.png",
      priority = "medium",
      width = 54,
      height = 70,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, 2.4375}
    },

    base_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/14-silo-front/14-silo-front.png",
      width = 352,
      height = 96,
      shift = {0, 3.5}
    },
    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-alarm.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_on_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-on.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_off_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-off.ogg",
            volume = 1.5
          }
        }
      }
    },
    doors_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-doors.ogg",
            volume = 1.5
          }
        }
      }
    },
    raise_rocket_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-raise-rocket.ogg",
            volume = 1.5
          }
        }
      }
    }
  },
  {
    type = "rocket-silo-rocket",
    name = "rocket-silo-3-rocket",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{-2, -7}, {2, 4}},
    selection_box = {{0, 0}, {0, 0}},
    dying_explosion = "massive-explosion",
    shadow_slave_entity = "rocket-silo-rocket-shadow",
    inventory_size = 1,
    rising_speed = 1 / (7 * 60),
    engine_starting_speed = 1 / (5.5 * 60),
    flying_speed = 0.5 / (2000 * 60),
    flying_acceleration = 0.01,
    result_items =
    {
      {"laser-quarry4", 4, "planet-quarry"}
    },

    glow_light =
    {
      intensity = 1,
      size = 30,
      shift = {0, 1.5},
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    rocket_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/02-11-rocket/02-rocket.png",
      width = 192,
      height = 288,
      shift = {0, 5.5}
    },

    rocket_shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/09-rocket-shadow/09-rocket-shadow.png",
      priority = "medium",
      width = 384,
      height = 128,
      draw_as_shadow = true,
      shift = {-2.5, 2}
    },

    rocket_glare_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glare.png",
      blend_mode = "additive",
      width = 509,
      height = 509,
      shift = {0, 9}
    },
    rocket_smoke_top1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {-1.59375, 7.34375}
    },
    rocket_smoke_top2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {0.46875, 8.28125}
    },
    rocket_smoke_top3_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {1.28125, 7.90625},
    },

    rocket_smoke_bottom1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {-1.65625, 6.71875}
    },
    rocket_smoke_bottom2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {1.65625, 6.71875}
    },
    rocket_flame_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.93,
      shift = {0.04, 10}
    },
    rocket_flame_left_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.345,
      shift = {-1.275, 8.6}
    },
    rocket_flame_left_rotation = 0.0611,

    rocket_flame_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.368,
      shift = {1.25, 8.875}
    },
    rocket_flame_right_rotation = 0.952,


    rocket_rise_offset = {0, -3.5},
    rocket_launch_offset = {0, -256},
    rocket_render_layer_switch_distance = 6.5,
    full_render_layer_switch_distance = 8,
    effects_fade_in_start_distance = 4.5,
    effects_fade_in_end_distance = 8,
    shadow_fade_out_start_ratio = 0.25,
    shadow_fade_out_end_ratio = 0.75,
    rocket_visible_distance_from_center = 3.75,

    flying_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-rocket.ogg",
            volume = 1.8
          },
        }
      },
    }
  },
  

  {
    type = "rocket-silo",
    name = "rocket-silo-4",
    icon = "__base__/graphics/icons/rocket-silo.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"rocket-building"},
    ingredient_count = 3,
    rocket_parts_required = 5,
    crafting_speed = 2,
    rocket_result_inventory_size = 1,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 4.3}
    },
    fixed_recipe = "rocket-part",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {hardness = 0.2, mining_time = 5, result = "rocket-silo-4"},
    max_health = 5000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.2, -4.7}, {4.2, 4.7}},
    selection_box = {{-4.5, -5}, {4.5, 5}},
    hole_clipping_box = { {-2.75, -1.15}, {2.75, 2.25} },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "250kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "rocket-silo-4-rocket",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 2 / (4.25 * 60),

    base_light =
    {
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.25, 1.25},
        size = 1,
        intensity = 1,
        rotation_shift = 0.6,
        color = {r = 0.7, g = 0.9, b = 1.0}
      },
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.25, 1},
        size = 1,
        intensity = 1,
        rotation_shift = 0.5,
        color = {r = 0.7, g = 0.9, b = 1.0}
      }
    },
    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-silo-shadow.png",
      priority = "medium",
      width = 447,
      height = 351,
      draw_as_shadow = true,
      shift = {1.5, 0.5}
    },
    satellite_shadow_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-satellite-shadow.png",
      priority = "medium",
      width = 44,
      height = 22,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      draw_as_shadow = true,
      shift = {7.875, -2.1875}
    },

    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    hole_light_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole-light.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-shadow-over-rocket.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glow.png",
      blend_mode = "additive",
      width = 224,
      height = 128,
      shift = {0, 2}
    },


    door_back_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/04-door-back.png",
      width = 192,
      height = 108,
      shift = {0, 1.53125}
    },
    door_back_open_offset = {1.75, -1.75},
    door_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/05-door-front.png",
      width = 192,
      height = 112,
      shift = {0, 2.0625}
    },
    door_front_open_offset = {-1.75, 1.75},

    base_day_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-day.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },
    base_night_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-night.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },


    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 0}
        }
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 2.8125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 3.75}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 2.8125}
        }
      }
    },
    satellite_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/satellite.png",
      priority = "medium",
      width = 27,
      height = 28,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      shift = {3.3125, -4.82813}
    },

    arm_01_back_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-01-back.png",
      priority = "medium",
      width = 54,
      height = 50,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, -0.875}
    },

    arm_02_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-02-right.png",
      priority = "medium",
      width = 81,
      height = 43,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {2.71875, 0.96875}
    },

    arm_03_front_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/13-arm-front-red-lights-front/arm-03-front.png",
      priority = "medium",
      width = 54,
      height = 70,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, 2.4375}
    },

    base_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/14-silo-front/14-silo-front.png",
      width = 352,
      height = 96,
      shift = {0, 3.5}
    },
    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-alarm.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_on_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-on.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_off_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-off.ogg",
            volume = 1.5
          }
        }
      }
    },
    doors_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-doors.ogg",
            volume = 1.5
          }
        }
      }
    },
    raise_rocket_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-raise-rocket.ogg",
            volume = 1.5
          }
        }
      }
    }
  },
  {
    type = "rocket-silo-rocket",
    name = "rocket-silo-4-rocket",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{-2, -7}, {2, 4}},
    selection_box = {{0, 0}, {0, 0}},
    dying_explosion = "massive-explosion",
    shadow_slave_entity = "rocket-silo-rocket-shadow",
    inventory_size = 1,
    rising_speed = 5 / (7 * 60),
    engine_starting_speed = 1 / (5.5 * 60),
    flying_speed = 0.1 / (2000 * 60),
    flying_acceleration = 0.21,
    result_items =
    {
      {"swarm-reciever", 4, "drone-swarm"}
    },

    glow_light =
    {
      intensity = 1,
      size = 30,
      shift = {0, 1.5},
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    rocket_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/02-11-rocket/02-rocket.png",
      width = 192,
      height = 288,
      shift = {0, 5.5}
    },

    rocket_shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/09-rocket-shadow/09-rocket-shadow.png",
      priority = "medium",
      width = 384,
      height = 128,
      draw_as_shadow = true,
      shift = {-2.5, 2}
    },

    rocket_glare_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glare.png",
      blend_mode = "additive",
      width = 509,
      height = 509,
      shift = {0, 9}
    },
    rocket_smoke_top1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {-1.59375, 7.34375}
    },
    rocket_smoke_top2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {0.46875, 8.28125}
    },
    rocket_smoke_top3_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {1.28125, 7.90625},
    },

    rocket_smoke_bottom1_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {-1.65625, 6.71875}
    },
    rocket_smoke_bottom2_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/rocket-top-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      width = 47,
      height = 149,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5,
      shift = {1.65625, 6.71875}
    },
    rocket_flame_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.9,
      scale = 1.23,
      shift = {0.04, 10}
    },
    rocket_flame_left_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.9,
      scale = 0.645,
      shift = {-1.275, 8.6}
    },
    rocket_flame_left_rotation = 0.0611,

    rocket_flame_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 88,
      height = 132,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.9,
      scale = 0.668,
      shift = {1.25, 8.875}
    },
    rocket_flame_right_rotation = 0.952,


    rocket_rise_offset = {0, -3.5},
    rocket_launch_offset = {0, -256},
    rocket_render_layer_switch_distance = 6.5,
    full_render_layer_switch_distance = 8,
    effects_fade_in_start_distance = 4.5,
    effects_fade_in_end_distance = 8,
    shadow_fade_out_start_ratio = 0.25,
    shadow_fade_out_end_ratio = 0.75,
    rocket_visible_distance_from_center = 3.75,

    flying_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-rocket.ogg",
            volume = 1.8
          },
        }
      },
    }
  },

  {
    type = "lamp",
    name = "large-lamp",
    icon = "__base__/graphics/icons/small-lamp.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-lamp"},
    max_health = 100,
    corpse = "big-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
    type = "electric",
    usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "30KW",
    light = {intensity = 5, size = 260, color = {r=1, g=1, b=1}},
    light_when_colored = {intensity = 5, size = 260, color = {r=1, g=1, b=1}},
    glow_size = 120,
    glow_color_intensity = 0.125,
    picture_off =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/small-lamp/lamp.png",
          priority = "high",
          width = 42,
          height = 36,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0,3),
          hr_version =
          {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp.png",
            priority = "high",
            width = 83,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0.25,3),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
          priority = "high",
          width = 38,
          height = 24,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(4,5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
            priority = "high",
            width = 76,
            height = 47,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(4, 4.75),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
      priority = "high",
      width = 46,
      height = 40,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(0, -7),
      hr_version =
      {
        filename = "__base__/graphics/entity/small-lamp/hr-lamp-light.png",
        priority = "high",
        width = 90,
        height = 78,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0, -7),
        scale = 0.5
      }
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}}
    },
    
    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
    },

  {
    type = "transport-belt",
    name = "terra-transport-belt-mk2",
    icon = "__base__/graphics/icons/express-transport-belt.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "terra-transport-belt-mk2"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      persistent = true
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
      hr_version =
      {
        filename = "__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 32,
        direction_count = 12,
        scale = 0.5
      }
    },
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.59375,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
  
  {
    type = "transport-belt",
    name = "terra-transport-belt",
    icon = "__base__/graphics/icons/express-transport-belt.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "terra-transport-belt"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      persistent = true
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
      hr_version =
      {
        filename = "__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 32,
        direction_count = 12,
        scale = 0.5
      }
    },
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed =  0.29375,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
  
  {
    type = "furnace",
    name = "stone-furnace-mk2",
    icon = "__base__/graphics/icons/stone-furnace.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "stone-furnace-mk2"},
    max_health = 250,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"smelting"},
    result_inventory_size = 2,
    energy_usage = "210kW",
    crafting_speed = 1.7,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 2,
      fuel_inventory_size = 1,
      emissions_per_minute = 3,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/brick-furnace/brick-furnace.png",
      priority = "extra-high",
      width = 81,
      height = 64,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__Darkstar_utilities__/graphics/entity/brick-furnace/stone-furnace-fire.png",
          priority = "extra-high",
          width = 23,
          height = 27,
          frame_count = 12,
          shift = { 0.078125, 0.5234375}
        },
        light = {intensity = 2, size = 2}
      }
    },
    fast_replaceable_group = "furnace"
  },
  
  {
    type = "solar-panel",
    name = "solar-panel-mk2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk2"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "4MW"
  },
  
  {
    type = "solar-panel",
    name = "solar-panel-mk3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk3"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk2.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "40MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk4",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk4"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk3.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "400MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk5",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk4.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk5"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -2.8}, {2.4, 2.8}},
    selection_box = {{-2.9, -2.9}, {2.9, 2.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk4.png",
      priority = "high",
      width = 208,
      height = 192
    },
    production = "4000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk6",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk5.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk6"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -2.8}, {2.4, 2.8}},
    selection_box = {{-2.9, -2.9}, {2.9, 2.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk5.png",
      priority = "high",
      width = 208,
      height = 192
    },
    production = "40000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk7",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk6.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk7"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -2.8}, {2.4, 2.8}},
    selection_box = {{-2.9, -2.9}, {2.9, 2.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk6.png",
      priority = "high",
      width = 208,
      height = 192
    },
    production = "400000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk2-G",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-g.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk2-G"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-g.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "6MW"
  },
  
  {
    type = "solar-panel",
    name = "solar-panel-mk3-G",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk2-g.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk3-G"},
    max_health = 900,
    corpse = "big-remnants",
       collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk2-g.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "60MW"
	},
	
	 {
    type = "solar-panel",
    name = "solar-panel-mk4-G",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk3-g.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk4-G"},
    max_health = 900,
    corpse = "big-remnants",
     collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk3-g.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "600MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk5-G",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk4-g.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk5-G"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk4-g.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "6000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk6-G",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk5-g.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk6-G"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk5-g.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "60000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk7-G",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk6-g.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk7-G"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk6-g.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "600000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk2-G2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-g2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk2-G2"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-g2.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "8MW"
  },
  
  {
    type = "solar-panel",
    name = "solar-panel-mk3-G2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk2-g2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk3-G2"},
    max_health = 900,
    corpse = "big-remnants",
       collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk2-g2.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "80MW"
	},
	
	 {
    type = "solar-panel",
    name = "solar-panel-mk4-G2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk3-g2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk4-G2"},
    max_health = 900,
    corpse = "big-remnants",
     collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk3-g2.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "800MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk5-G2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk4-g2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk5-G2"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk4-g2.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "8000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk6-G2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk5-g2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk6-G2"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk5-g2.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "80000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk7-G2",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk6-g2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk7-G2"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk6-g2.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "800000MW"
	},
  
    {
    type = "solar-panel",
    name = "solar-panel-mk2-G3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-g3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk2-G3"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-g3.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "10MW"
  },
  
  {
    type = "solar-panel",
    name = "solar-panel-mk3-G3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk2-g3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk3-G3"},
    max_health = 900,
    corpse = "big-remnants",
       collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk2-g3.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "100MW"
	},
	
    {
    type = "solar-panel",
    name = "solar-panel-mk4-G3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk3-g3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk4-G3"},
    max_health = 900,
    corpse = "big-remnants",
     collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk3-g3.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "1000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk5-G3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk4-g3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk5-G3"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk4-g3.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "10000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk6-G3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk5-g3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk6-G3"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk5-g3.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "100000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk7-G3",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk6-g3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk7-G3"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk6-g3.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "1000000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk2-GL",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-gl.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk2-GL"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-gl.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "16MW"
  },
  
  {
    type = "solar-panel",
    name = "solar-panel-mk3-GL",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk2-gl.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk3-GL"},
    max_health = 900,
    corpse = "big-remnants",
       collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk2-gl.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "160MW"
	},
	
	 {
    type = "solar-panel",
    name = "solar-panel-mk4-GL",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk3-gl.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk4-GL"},
    max_health = 900,
    corpse = "big-remnants",
     collision_box = {{-3.4, -1.8}, {1.8, 1.4}},
    selection_box = {{-3.4, -1.8}, {1.8, 1.4}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk3-gl.png",
      priority = "high",
      width = 209,
      height = 96
    },
    production = "1600MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk5-GL",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk4-gl.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk5-GL"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk4-gl.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "16000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk6-GL",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk5.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk6-GL"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk5-gl.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "160000MW"
	},
	
	{
    type = "solar-panel",
    name = "solar-panel-mk7-GL",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-solar-panel-mk6.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk7-GL"},
    max_health = 900,
    corpse = "big-remnants",
    collision_box = {{-6.8, -3.4}, {3.4, 2.8}},
    selection_box = {{-6.8, -3.4}, {3.4, 2.8}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk6-gl.png",
      priority = "high",
      width = 402,
      height = 192
    },
    production = "1600000MW"
  },
  {
    type = "assembling-machine",
    name = "advanced-chemical-plant",
    icon = "__Darkstar_utilities__/graphics/entity/advanced-chemical-plant/chemical-plant2-icon.png",
	    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "advanced-chemical-plant"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 6
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 108,
        height = 148,
        frame_count = 24,
        line_length = 12,
        shift = util.by_pixel(1, -9),
        hr_version =
        {
          filename = "__Darkstar_utilities__/graphics/entity/advanced-chemical-plant/hr-chemical-plant2.png",
          width = 220,
          height = 292,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(0.5, -9),
          scale = 0.5
          }
      },
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
        width = 154,
        height = 112,
        repeat_count = 24,
        frame_count = 1,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
          width = 312,
          height = 222,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.5
          }
      }
    }}),
    working_visualisations =
    {
      {
        apply_recipe_tint = "primary",
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 24,
          shift = util.by_pixel(24, 14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-north.png",
            frame_count = 24,
            line_length = 6,
            width = 66,
            height = 44,
            shift = util.by_pixel(23, 15),
            scale = 0.5
          }
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
          frame_count = 24,
          line_length = 6,
          width = 36,
          height = 18,
          shift = util.by_pixel(0, 22),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-east.png",
            frame_count = 24,
            line_length = 6,
            width = 70,
            height = 36,
            shift = util.by_pixel(0, 22),
            scale = 0.5
          }
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
          frame_count = 24,
          line_length = 6,
          width = 34,
          height = 24,
          shift = util.by_pixel(0, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-south.png",
            frame_count = 24,
            line_length = 6,
            width = 66,
            height = 42,
            shift = util.by_pixel(0, 17),
            scale = 0.5
          }
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
          frame_count = 24,
          line_length = 6,
          width = 38,
          height = 20,
          shift = util.by_pixel(-10, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-west.png",
            frame_count = 24,
            line_length = 6,
            width = 74,
            height = 36,
            shift = util.by_pixel(-10, 13),
            scale = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "secondary",
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 22,
          shift = util.by_pixel(24, 14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-north.png",
            frame_count = 24,
            line_length = 6,
            width = 62,
            height = 42,
            shift = util.by_pixel(24, 15),
            scale = 0.5
          }
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
          frame_count = 24,
          line_length = 6,
          width = 34,
          height = 18,
          shift = util.by_pixel(0, 22),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-east.png",
            frame_count = 24,
            line_length = 6,
            width = 68,
            height = 36,
            shift = util.by_pixel(0, 22),
            scale = 0.5
          }
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 18,
          shift = util.by_pixel(0, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-south.png",
            frame_count = 24,
            line_length = 6,
            width = 60,
            height = 40,
            shift = util.by_pixel(1, 17),
            scale = 0.5
          }
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
          frame_count = 24,
          line_length = 6,
          width = 36,
          height = 16,
          shift = util.by_pixel(-10, 14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-west.png",
            frame_count = 24,
            line_length = 6,
            width = 68,
            height = 28,
            shift = util.by_pixel(-9, 15),
            scale = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "tertiary",
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel_hr(-30, -161),
        east_position = util.by_pixel_hr(29, -150),
        south_position = util.by_pixel_hr(12, -134),
        west_position = util.by_pixel_hr(-32, -130),
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 46,
          height = 94,
          animation_speed = 0.5,
          shift = util.by_pixel(-2, -40),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 90,
            height = 188,
            animation_speed = 0.5,
            shift = util.by_pixel(-2, -40),
            scale = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "quaternary",
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel_hr(-30, -161),
        east_position = util.by_pixel_hr(29, -150),
        south_position = util.by_pixel_hr(12, -134),
        west_position = util.by_pixel_hr(-32, -130),
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
          frame_count = 47,
          line_length = 16,
          width = 20,
          height = 42,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-inner.png",
            frame_count = 47,
            line_length = 16,
            width = 40,
            height = 84,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -14),
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    crafting_speed = 1.7,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 20,
    },
    energy_usage = "210kW",
    crafting_categories = {"chemistry"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    }
  },
  
  {
    type = "electric-pole",
    name = "substation-mk2",
    icon = "__base__/graphics/icons/substation.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "substation-mk2"},
    max_health = 200,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -3}, {1, 1}},
    maximum_wire_distance = 28,
    supply_area_distance = 14,
    pictures =
    {
      filename = "__Darkstar_utilities__/graphics/entity/substation-mk2/substation.png",
      priority = "high",
      width = 132,
      height = 144,
      direction_count = 4,
      shift = {0.9, -1}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/substation.ogg" },
      apparent_volume = 1.5,
      audible_distance_modifier = 0.5,
      probability = 1 / (3 * 60) -- average pause between the sound is 3 seconds
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.3, -0.6},
          red = {2.65, -0.6}
        },
        wire =
        {
          copper = {-0.23, -2.65},
          green = {-0.85,-2.65},
          red = {0.35,-2.65}
        }
      },
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.2, -0.8},
          red = {2.5, -0.35}
        },
        wire =
        {
          copper = {-0.26, -2.71},
          green = {-0.67,-3},
          red = {0.17,-2.47}
        }
      },
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.9, -0.9},
          red = {1.9, -0.3}
        },
        wire =
        {
          copper = {-0.23, -2.7},
          green = {-0.23,-3.2},
          red = {-0.23,-2.35}
        }
      },
      {
        shadow =
        {
          copper = {1.8, -0.7},
          green = {1.3, -0.6},
          red = {2.4, -1.15}
        },
        wire =
        {
          copper = {-0.2, -2.7},
          green = {-0.62,-2.45},
          red = {0.25,-2.98}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  },
  
  {
    type = "electric-pole",
    name = "tesla-coil",
    icon = "__base__/graphics/icons/substation.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "tesla-coil"},
    max_health = 200,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -3}, {1, 1}},
    maximum_wire_distance = 64,
    supply_area_distance = 64,
    pictures =
    {
      filename = "__Darkstar_utilities__/graphics/entity/tesla-coil/tesla-coil.png",
      priority = "high",
      width = 158,
      height = 158,
      direction_count = 1,
      shift = {0.3, -1.5}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/substation.ogg" },
      apparent_volume = 1.5,
      audible_distance_modifier = 0.5,
      probability = 1 / (3 * 60) -- average pause between the sound is 3 seconds
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.3, -0.6},
          red = {2.65, -0.6}
        },
        wire =
        {
          copper = {-0.23, -2.65},
          green = {-0.85,-2.65},
          red = {0.35,-2.65}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  },
  
  {
    type = "electric-pole",
    name = "terra-coil",
    icon = "__base__/graphics/icons/substation.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-coil"},
    max_health = 200,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -3}, {1, 1}},
    maximum_wire_distance = 0,
    supply_area_distance = 64,
    pictures =
    {
      filename = "__Darkstar_utilities__/graphics/entity/tesla-coil/tesla-coil-2.png",
      priority = "high",
      width = 132,
      height = 144,
      direction_count = 4,
      shift = {0.9, -1}
    },
	 animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/tesla-coil/tesla-coil-animation.png",
      priority = "high",
      width = 1056,
      height = 158,
      frame_count = 8,
      line_length = 8,
      shift = {0.84, -0.09}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/substation.ogg" },
      apparent_volume = 1.5,
      audible_distance_modifier = 0.5,
      probability = 1 / (3 * 60) -- average pause between the sound is 3 seconds
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.3, -0.6},
          red = {2.65, -0.6}
        },
        wire =
        {
          copper = {-0.23, -2.65},
          green = {-0.85,-2.65},
          red = {0.35,-2.65}
        }
      },
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.2, -0.8},
          red = {2.5, -0.35}
        },
        wire =
        {
          copper = {-0.26, -2.71},
          green = {-0.67,-3},
          red = {0.17,-2.47}
        }
      },
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.9, -0.9},
          red = {1.9, -0.3}
        },
        wire =
        {
          copper = {-0.23, -2.7},
          green = {-0.23,-3.2},
          red = {-0.23,-2.35}
        }
      },
      {
        shadow =
        {
          copper = {1.8, -0.7},
          green = {1.3, -0.6},
          red = {2.4, -1.15}
        },
        wire =
        {
          copper = {-0.2, -2.7},
          green = {-0.62,-2.45},
          red = {0.25,-2.98}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  },
  
   {
    type = "logistic-robot",
    name = "logistic-robot-mk2",
    icon = "__base__/graphics/icons/logistic-robot.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-mk2"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 15,
    speed = 0.25,
    transfer_distance = 0.5,
    max_energy = "5MJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "0.5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 42
    },
    idle_with_cargo =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16
    },
    in_motion =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 126
    },
    in_motion_with_cargo =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 84
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },

  {
    type = "construction-robot",
    name = "construction-robot-mk2",
    icon = "__base__/graphics/icons/construction-robot.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-mk2"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.25,
    transfer_distance = 0.5,
    max_energy = "3000kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 1.8, size = 16},
    idle =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/construction-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16
    },
    in_motion =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/construction-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16,
      y = 36
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    working =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots/construction-robot-mk2-working.png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    repair_pack = "repair-pack",
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  },
  
  {
    type = "logistic-robot",
    name = "logistic-robot-mk3",
    icon = "__base__/graphics/icons/logistic-robot.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-mk3"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 500,
    speed = 50000,
    transfer_distance = 0.5,
    max_energy = "5MJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "0.5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 42
    },
    idle_with_cargo =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16
    },
    in_motion =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 126
    },
    in_motion_with_cargo =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 84
    },
    shadow_idle =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },

  {
    type = "construction-robot",
    name = "construction-robot-mk3",
    icon = "__base__/graphics/icons/construction-robot.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-mk3"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 5000,
    speed = 50000,
    transfer_distance = 2.5,
    max_energy = "0.1kJ",
    energy_per_tick = "0.001kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "0.001kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.3,
    working_light = {intensity = 1.8, size = 16},
    idle =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/construction-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16
    },
    in_motion =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/construction-robot-mk2.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16,
      y = 36
    },
    shadow_idle =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    working =
    {
      filename = "__Darkstar_utilities__/graphics/entity/robots2/construction-robot-mk2-working.png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/robots2/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    repair_pack = "repair-pack",
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  },
  
   {
    type = "accumulator",
    name = "advanced-accumulator",
    icon = "__Darkstar_utilities__/graphics/icons/advanced-accumulator.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "advanced-accumulator"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "25MJ",
            usage_priority = "tertiary",
      input_flow_limit = "1500kW",
      output_flow_limit = "1500kW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/advanced-accumulator/advanced-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/advanced-accumulator/advanced-accumulator-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 1.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/advanced-accumulator/advanced-accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 1.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1.2, size = 14},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
   }
   },
        
   {
    type = "accumulator",
    name = "energy-liquid",
    icon = "__Darkstar_utilities__/graphics/icons/energy-liquid.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "125MJ",
            usage_priority = "tertiary",
      input_flow_limit = "5500kW",
      output_flow_limit = "5500kW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 32, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 32, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/water_power.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/water_power_idle.ogg",
        volume = 1
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },
   
   {
    type = "accumulator",
    name = "energy-liquid-2",
    icon = "__Darkstar_utilities__/graphics/icons/silo2-icon.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-2"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "725MJ",
            usage_priority = "tertiary",
      input_flow_limit = "55000GW",
      output_flow_limit = "55000GW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo2.png",
      priority = "low",
      width = 279,
      height = 300,
      shift = {2.1, -1.9},
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/charge.png",
	  priority = "low",
      width = 279,
      height = 300,
      line_length = 3,
      frame_count = 9,
      shift = {2.1, -1.9},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 64, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/discharge.png",
	  priority = "low",
      width = 279,
      height = 300,
      line_length = 3,
      frame_count = 9,
      shift = {2.1, -1.9},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 64, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/reactor.ogg",
        volume = 2
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/reactor.ogg",
        volume = 2
      },
      max_sounds_per_type = 1
   },
   circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
circuit_wire_max_distance = default_circuit_wire_max_distance,
default_output_signal = {type = "virtual", name = "signal-A"}
   },
   
   {
    type = "accumulator",
    name = "energy-liquid-3",
    icon = "__Darkstar_utilities__/graphics/icons/silo3-icon.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-3"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-10.1, -13.1}, {12.1, 8}},
    selection_box = {{-10.1, -13.1}, {12.1, 8}},
    collision_mask = { "item-layer", "object-layer", "water-tile"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "72500MJ",
            usage_priority = "tertiary",
      input_flow_limit = "5GW",
      output_flow_limit = "5GW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo3.png",
      priority = "low",
      width = 793,
      height = 678,
      shift = {1, -3}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank-charge.png",
	  priority = "low",
      width = 793,
      height = 678,
      line_length = 2,
      frame_count = 4,
      shift = {1, -3},
      animation_speed = 0.2
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 128, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank-discharge.png",
	  priority = "low",
      width = 793,
      height = 678,
      line_length = 2,
      frame_count = 4,
      shift = {1, -3},
      animation_speed = 0.2
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 128, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/silo3.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/silo3.ogg",
        volume = 1
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },
   
   {
    type = "accumulator",
    name = "energy-liquid-U",
    icon = "__Darkstar_utilities__/graphics/icons/energy-liquid2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-U"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "250MJ",
            usage_priority = "tertiary",
      input_flow_limit = "10500kW",
      output_flow_limit = "10500kW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid2.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid-charge-animation2.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 32, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid-charge-animation2.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 32, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/water_power.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/water_power_idle.ogg",
        volume = 1
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },
   
   {
    type = "accumulator",
    name = "energy-liquid-2-U",
    icon = "__Darkstar_utilities__/graphics/icons/silo2-icon2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-2-U"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1450MJ",
            usage_priority = "tertiary",
      input_flow_limit = "55000GW",
      output_flow_limit = "55000GW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo4.png",
      priority = "low",
      width = 279,
      height = 300,
      shift = {2.1, -1.9},
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/charge2.png",
	  priority = "low",
      width = 279,
      height = 300,
      line_length = 3,
      frame_count = 9,
      shift = {2.1, -1.9},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 64, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/discharge2.png",
	  priority = "low",
      width = 279,
      height = 300,
      line_length = 3,
      frame_count = 9,
      shift = {2.1, -1.9},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 64, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/reactor.ogg",
        volume = 2
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/reactor.ogg",
        volume = 2
      },
      max_sounds_per_type = 1
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },
   
   {
    type = "accumulator",
    name = "energy-liquid-3-U",
    icon = "__Darkstar_utilities__/graphics/icons/silo3-icon2.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-3-U"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-10.1, -13.1}, {12.1, 8}},
    selection_box = {{-10.1, -13.1}, {12.1, 8}},
	collision_mask = { "item-layer", "object-layer", "water-tile"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "145000MJ",
            usage_priority = "tertiary",
      input_flow_limit = "55000GW",
      output_flow_limit = "55000GW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank.png",
      priority = "low",
      width = 793,
      height = 678,
      shift = {1, -3}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank2-charge.png",
	  priority = "low",
      width = 793,
      height = 678,
      line_length = 2,
      frame_count = 4,
      shift = {1, -3},
      animation_speed = 0.2
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 128, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank2-discharge.png",
	  priority = "low",
      width = 793,
      height = 678,
      line_length = 2,
      frame_count = 4,
      shift = {1, -3},
      animation_speed = 0.2
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 128, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/silo3.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/silo3.ogg",
        volume = 1
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },

   {
    type = "accumulator",
    name = "energy-liquid-D",
    icon = "__Darkstar_utilities__/graphics/icons/energy-liquid3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-D"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "850MJ",
            usage_priority = "tertiary",
      input_flow_limit = "50050kW",
      output_flow_limit = "50050kW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid3.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid-charge-animation3.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 32, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/energy-liquid-discharge-animation3.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 32, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/water_power.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/water_power_idle.ogg",
        volume = 1
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },

    {
    type = "accumulator",
    name = "energy-liquid-2-D",
    icon = "__Darkstar_utilities__/graphics/icons/silo3-icon3.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-2-D"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "3450MJ",
            usage_priority = "tertiary",
      input_flow_limit = "1GW",
      output_flow_limit = "1GW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo5.png",
      priority = "low",
      width = 279,
      height = 300,
      shift = {2.1, -1.9},
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/charge3.png",
	  priority = "low",
      width = 279,
      height = 300,
      line_length = 3,
      frame_count = 9,
      shift = {2.1, -1.9},
      animation_speed = 0.2
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 64, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/discharge3.png",
	  priority = "low",
      width = 279,
      height = 300,
      line_length = 3,
      frame_count = 9,
      shift = {2.1, -1.9},
      animation_speed = 0.2
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 64, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/reactor.ogg",
        volume = 2
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/reactor.ogg",
        volume = 2
      },
      max_sounds_per_type = 1
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },

   {
    type = "accumulator",
    name = "energy-liquid-3-D",
    icon = "__Darkstar_utilities__/graphics/icons/silo3-icon4.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "energy-liquid-3-D"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-10.1, -13.1}, {12.1, 8}},
    selection_box = {{-10.1, -13.1}, {12.1, 8}},
	collision_mask = { "item-layer", "object-layer", "water-tile"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "545000MJ",
            usage_priority = "tertiary",
      input_flow_limit = "55GW",
      output_flow_limit = "55GW"
    },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo6.png",
      priority = "low",
      width = 793,
      height = 678,
      shift = {1, -3}
    },
    charge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank3-charge.png",
	  priority = "low",
      width = 793,
      height = 678,
      line_length = 2,
      frame_count = 4,
      shift = {1, -3},
      animation_speed = 0.2
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 128, color = {r=0, g=0.5, b=1}},
    discharge_animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank3-discharge.png",
	  priority = "low",
      width = 793,
      height = 678,
      line_length = 2,
      frame_count = 4,
      shift = {1, -3},
      animation_speed = 0.2
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 128, color = {r=0, g=0.5, b=1}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/silo3.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__Darkstar_utilities__/sounds/silo3.ogg",
        volume = 1
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
 circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
 circuit_wire_max_distance = default_circuit_wire_max_distance,
 default_output_signal = {type = "virtual", name = "signal-A"}
   },
  
  {
    type = "resource",
    name = "gold-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
	    icon_size = 32,
    flags = {"placeable-neutral"},
    order="a-b-b",
    minable =
    {
      hardness = 0.9,
      mining_particle = "iron-ore-particle",
      mining_time = 2,
      result = "gold-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "gold-ore",
      sharpness = 15/16,
      richness_multiplier = 1500,
      richness_multiplier_distance_bonus = 20,
      richness_base = 10,
      peaks = {
        {
          influence = 0.02,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.01,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.2,
          noise_layer = "gold-ore",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.1,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.1,
          noise_layer = "gold-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.2,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.1,
          max_influence = 0.3,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.1,
          max_influence = 0.1,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = 0.1,
          max_influence = 0.1,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__Darkstar_utilities__/graphics/entity/gold-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8
      }
    },
    map_color = {r=0.937, g=0.919, b=0.127}
  },
  
  {
    type = "resource",
    name = "lead-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
	    icon_size = 32,
    flags = {"placeable-neutral"},
    order="a-b-b",
    minable =
    {
      hardness = 0.9,
      mining_particle = "iron-ore-particle",
      mining_time = 4,
      result = "lead-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "lead-ore",
      sharpness = 15/16,
      richness_multiplier = 1500,
      richness_multiplier_distance_bonus = 20,
      richness_base = 10,
      peaks = {
        {
          influence = 0.03,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.03,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.1,
          noise_layer = "lead-ore",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.1,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.2,
          noise_layer = "lead-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.2,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.1,
          max_influence = 0.2,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.1,
          max_influence = 0.2,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = 0.1,
          max_influence = 0.25,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__Darkstar_utilities__/graphics/entity/lead-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8
      }
    },
    map_color = {r=0, g=0, b=0.227}
  },
  
  {
    type = "radar",
    name = "radar-2",
    icon = "__base__/graphics/icons/radar.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "radar"},
    max_health = 250,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_per_sector = "5MJ",
    max_distance_of_sector_revealed = 140,
    max_distance_of_nearby_sector_revealed = 12,
    energy_per_nearby_scan = "50kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "900kW",
    integration_patch =
    {
      filename = "__base__/graphics/entity/radar/radar-integration.png",
      priority = "low",
      width = 119,
      height = 108,
      apply_projection = false,
      direction_count = 1,
      repeat_count = 64,
      line_length = 1,
      shift = util.by_pixel(1.5, 4),
      hr_version =
      {
        filename = "__base__/graphics/entity/radar/hr-radar-integration.png",
        priority = "low",
        width = 238,
        height = 216,
        apply_projection = false,
        direction_count = 1,
        repeat_count = 64,
        line_length = 1,
        shift = util.by_pixel(1.5, 4),
        scale = 0.5
      }
    },
    pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 98,
          height = 128,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1, -16),
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar.png",
            priority = "low",
            width = 196,
            height = 254,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -16),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 172,
          height = 94,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39,3),
          draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
            priority = "low",
            width = 343,
            height = 186,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(39.25,3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    },
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
  },
  
   {
    type = "beacon",
    name = "ultra-beacon",
    icon = "__Darkstar_utilities__/graphics/icons/ultra-beacon-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "ultra-beacon"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/ultra-beacon/ultra-beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06}
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/ultra-beacon/ultra-beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__Darkstar_utilities__/graphics/entity/misc/beacon-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
      width = 10,
      height = 10
    },
    supply_area_distance = 50,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "50MW",
    distribution_effectivity = 0.7,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    
    },
   },
   
   {
    type = "beacon",
    name = "power-boost-beacon",
    icon = "__Darkstar_utilities__/graphics/icons/power-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "power-boost-beacon"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution",},
    base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/power-boost-beacon/power-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06}
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/power-boost-beacon/power-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__Darkstar_utilities__/graphics/entity/misc/beacon-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
      width = 10,
      height = 10
    },
    supply_area_distance = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "500GW",
    distribution_effectivity = 7,
    module_specification =
    {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    
    },
   },
   
   {
    type = "beacon",
    name = "basic-beacon-mk2",
    icon = "__Darkstar_utilities__/graphics/icons/mk2-beacon-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "basic-beacon-mk2"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/basic-beacon-mk2/basic-beacon-mk2-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06}
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/basic-beacon-mk2/basic-beacon-mk2-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__Darkstar_utilities__/graphics/entity/misc/beacon-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
      width = 10,
      height = 10
    },
    supply_area_distance = 25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "1MW",
    distribution_effectivity = 0.40,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    
    },
   },
   
   {
    type = "beacon",
    name = "world-array",
    icon = "__Darkstar_utilities__/graphics/icons/world-array-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "world-array"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/world-array/world-array-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06}
    },
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/world-array/world-array-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 1.5
    },
    animation_shadow =
    {
      filename = "__Darkstar_utilities__/graphics/entity/misc/beacon-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 1.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
      width = 10,
      height = 10
    },
    supply_area_distance = 64,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "850GW",
    distribution_effectivity = 5,
    module_specification =
    {
      module_slots = 10,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    
    },
   },
	
   {
    type = "roboport",
    name = "roboport-mk2",
    icon = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk2-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-mk2"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "20MW",
      buffer_capacity = "600MJ"
    },
    recharge_minimum = "160MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "4000MW",
    logistics_radius = 50,
    construction_radius = 100,
    charge_approach_distance = 5,
    robot_slots_count = 14,
    material_slots_count = 14,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}
    },
    base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/roboport/roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk2-base.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2, 7.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 19.25),
          hr_version =
          {
            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            scale = 0.5
          }
        }
      }
    },
    base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5, 5),
        scale = 0.5
      }
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75, -61.25),
        scale = 0.5
      }
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25, -29.5),
        scale = 0.5
      }
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25,-9.75),
        scale = 0.5
      }
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,

    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
      }
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      }
    },

    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
  },

  {
    type = "roboport",
    name = "roboport-mk3",
    icon = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk3-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-mk3"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "400MW",
      buffer_capacity = "800MJ"
    },
    recharge_minimum = "160MJ",
    energy_usage = "600kW",
    -- per one charge slot
    charging_energy = "16000MW",
    logistics_radius = 150,
    construction_radius = 300,
    charge_approach_distance = 5,
    robot_slots_count = 14,
    material_slots_count = 14,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},
    },
    base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/roboport/roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk3-base.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2, 7.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 19.25),
          hr_version =
          {
            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            scale = 0.5
          }
        }
      }
    },
    base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5, 5),
        scale = 0.5
      }
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75, -61.25),
        scale = 0.5
      }
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25, -29.5),
        scale = 0.5
      }
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25,-9.75),
        scale = 0.5
      }
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,

    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
      }
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      }
    },

    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
  },

  {
    type = "roboport",
    name = "roboport-charger",
    icon = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk2-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-charger"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "4000MW",
      buffer_capacity = "8000MJ"
    },
    recharge_minimum = "1600MJ",
    energy_usage = "6000kW",
    -- per one charge slot
    charging_energy = "340000MW",
    logistics_radius = 1,
    construction_radius = 1,
    charge_approach_distance = 20,
    robot_slots_count = 1,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},  {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},  {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},  {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},  {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},  {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},  {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5}, {-1.5, 1.5},
    },
    base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/roboport/roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/roboports/charger.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2, 7.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 19.25),
          hr_version =
          {
            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            scale = 0.5
          }
        }
      }
    },
    base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5, 5),
        scale = 0.5
      }
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75, -61.25),
        scale = 0.5
      }
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25, -29.5),
        scale = 0.5
      }
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25,-9.75),
        scale = 0.5
      }
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,

    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
      }
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      }
    },

    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
  },

  {
    type = "mining-drill",
    name = "pumpjack-mk2",
    icon = "__base__/graphics/icons/pumpjack.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk2"},
    resource_categories = {"basic-fluid"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions_per_minute = 6,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "180kW",
    mining_speed = 2,
    mining_power = 7,
    resource_searching_radius = 0.79,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = util.by_pixel(6, -0.5)
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__Darkstar_utilities__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack",
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-4",
    icon = "__Darkstar_utilities__/graphics/icons/assembling-machine-4.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-4"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/hr-assembling-machine-4.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    },

    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 1.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4,
    },
    energy_usage = "500kW",
    ingredient_count = 9,
    module_specification =
    {
      module_slots = 6
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
  {
    type = "assembling-machine",
    name = "fish-farm",
    icon = "__Darkstar_utilities__/graphics/icons/fish-farm-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fish-farm"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__Darkstar_utilities__/sounds/fish-farm-sound.ogg",
          volume = 0.8
        },
        {
          filename = "__Darkstar_utilities__/sounds/fish-farm-sound.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__Darkstar_utilities__/sounds/fish-farm-sound.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/fish-farm.png",
          priority = "high",
          width = 255,
          height = 266,
          frame_count = 64,
          line_length = 10,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/fish-farm.png",
            priority = "high",
            width = 255,
            height = 266,
            frame_count = 64,
            line_length = 10,
            shift = util.by_pixel(0, -0.75),
            scale = 0.40
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/fish-farm.png",
          priority = "high",
          width = 255,
          height = 266,
          frame_count = 64,
          line_length = 10,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/fish-farm.png",
            priority = "high",
            width = 255,
            height = 266,
            frame_count = 64,
            line_length = 10,
            draw_as_shadow = true,
            shift = util.by_pixel(16, 4),
            scale = 0.40
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 1.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -4,
    },
    energy_usage = "1kW",
    ingredient_count = 2,
    fixed_recipe = "raw-fish",
  },
  
  {
    type = "assembling-machine",
    name = "iron-probe",
    icon = "__Darkstar_utilities__/graphics/icons/iron-probe-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "iron-probe"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/iron-probe.png",
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/iron-probe.png",
            priority = "high",
            width = 500,
            height = 500,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.3
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
          priority = "high",
          width = 845,
          height = 500,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
            priority = "high",
            width = 845,
            height = 500,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(27, 13),
            scale = 0.2
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
    },
    energy_usage = "250kW",
    ingredient_count = 2,
    fixed_recipe = "deep-iron-ore",
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
  },
  
  {
    type = "assembling-machine",
    name = "copper-probe",
    icon = "__Darkstar_utilities__/graphics/icons/copper-probe-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "copper-probe"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/copper-probe.png",
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/copper-probe.png",
            priority = "high",
            width = 500,
            height = 500,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.3
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
          priority = "high",
          width = 845,
          height = 500,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
            priority = "high",
            width = 845,
            height = 500,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(27, 13),
            scale = 0.2
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
    },
    energy_usage = "250kW",
    ingredient_count = 2,
    fixed_recipe = "deep-copper-ore",
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
  },

  {
    type = "assembling-machine",
    name = "gold-probe",
    icon = "__Darkstar_utilities__/graphics/icons/gold-probe-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "gold-probe"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/gold-probe.png",
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/gold-probe.png",
            priority = "high",
            width = 500,
            height = 500,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.3
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
          priority = "high",
          width = 845,
          height = 500,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
            priority = "high",
            width = 845,
            height = 500,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(27, 13),
            scale = 0.2
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
    },
    energy_usage = "250kW",
    ingredient_count = 2,
    fixed_recipe = "deep-gold-ore",
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
  },

  {
    type = "assembling-machine",
    name = "uranium-probe",
    icon = "__Darkstar_utilities__/graphics/icons/uranium-probe-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "uranium-probe"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/uranium-probe.png",
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/uranium-probe.png",
            priority = "high",
            width = 500,
            height = 500,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.3
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
          priority = "high",
          width = 845,
          height = 500,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
            priority = "high",
            width = 845,
            height = 500,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(27, 13),
            scale = 0.2
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
    },
    energy_usage = "250kW",
    ingredient_count = 2,
    fixed_recipe = "deep-uranium-ore",
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
  },
  {
    type = "assembling-machine",
    name = "stone-probe",
    icon = "__Darkstar_utilities__/graphics/icons/stone-probe-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "stone-probe"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/stone-probe.png",
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/stone-probe.png",
            priority = "high",
            width = 500,
            height = 500,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.3
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
          priority = "high",
          width = 845,
          height = 500,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
            priority = "high",
            width = 845,
            height = 500,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(27, 13),
            scale = 0.2
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
    },
    energy_usage = "250kW",
    ingredient_count = 2,
    fixed_recipe = "deep-stone-ore",
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
  },
  {
    type = "assembling-machine",
    name = "lead-probe",
    icon = "__Darkstar_utilities__/graphics/icons/lead-probe-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "lead-probe"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/electric-mining-drill.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/lead-probe.png",
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/lead-probe.png",
            priority = "high",
            width = 500,
            height = 500,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.3
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
          priority = "high",
          width = 845,
          height = 500,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/probe/probe-shadow.png",
            priority = "high",
            width = 845,
            height = 500,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(27, 13),
            scale = 0.2
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 100,
    },
    energy_usage = "250kW",
    ingredient_count = 2,
    fixed_recipe = "deep-lead-ore",
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
  },
  {
    type = "assembling-machine",
    name = "brain-grower",
    icon = "__Darkstar_utilities__/graphics/icons/brain-grower-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "brain-grower"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
          volume = 0.8
        },
        {
          filename = "__Darkstar_utilities__/sounds/think-tank.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__Darkstar_utilities__/sounds/think-tank.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/solar-panel/brain-grower.png",
          priority = "high",
          width = 519,
          height = 463,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/solar-panel/brain-grower.png",
            priority = "high",
            width = 519,
            height = 463,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(18, -7),
            scale = 0.25
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/solar-panel/brain-grower.png",
          priority = "high",
          width = 519,
          height = 463,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(16, 4),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/solar-panel/brain-grower.png",
            priority = "high",
            width = 519,
            height = 463,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(015, -8),
            scale = 0.1
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.002,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 50,
    },
    energy_usage = "1000kW",
    ingredient_count = 2,
    fixed_recipe = "grown-brain",
    allowed_effects = {"consumption", "speed", "pollution"},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.8}
    },
  },
  {
    type = "assembling-machine",
    name = "biodome",
    icon = "__Darkstar_utilities__/graphics/icons/biodome-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 2.5, result = "biodome"},
    max_health = 10000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    open_sound = { filename = "__Darkstar_utilities__/sounds/biodome-open.ogg", volume = 0.85 },
    close_sound = { filename = "__Darkstar_utilities__/sounds/biodome-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__Darkstar_utilities__/sounds/biodome.ogg",
          volume = 0.8
        },
        {
          filename = "__Darkstar_utilities__/sounds/biodome.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__Darkstar_utilities__/sounds/biodome.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-18.5, -17.5}, {19.6, 16.6}},
		selection_box = {{-19, -18}, {19.6, 16.6}},
    drawing_box = {{-17, -17}, {6.6, 6.6}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Darkstar_utilities__/graphics/entity/biodome/biodome-on.png",
          priority = "high",
          width = 1200,
          height = 1200,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/biodome/biodome-on.png",
            priority = "high",
            width = 1200,
            height = 1200,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -0.75),
            scale = 1
          }
        },
        {
          filename = "__Darkstar_utilities__/graphics/entity/biodome/biodome-shadow.png",
          priority = "high",
          width = 1200,
          height = 1200,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(130, 15),
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/biodome/biodome-shadow.png",
            priority = "high",
            width = 1200,
            height = 1200,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(130, 15),
            scale = 1
          }
        }
      }
    },

    crafting_categories = {"generators"},
    crafting_speed = 0.1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -15000,
    },
    energy_usage = "50kW",
    ingredient_count = 2,
    fixed_recipe = "biodome-wood",
  },
  
  {
    type = "assembling-machine",
    name = "oil-refinery-mk2",
    icon = "__base__/graphics/icons/oil-refinery.png",
	    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "oil-refinery-mk2"},
    max_health = 600,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 6
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 3,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 9,
    },
    energy_usage = "1264kW",
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = "__Darkstar_utilities__/graphics/entity/oil-refinery-mk2/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__Darkstar_utilities__/graphics/entity/oil-refinery-mk2/oil-refinery.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__Darkstar_utilities__/graphics/entity/oil-refinery-mk2/oil-refinery.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__Darkstar_utilities__/graphics/entity/oil-refinery-mk2/oil-refinery.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          shift = util.by_pixel(0, -14),
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },

  
  {
    type = "roboport",
    name = "roboport-mk4",
    icon = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk3-icon.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-mk4"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "5GW",
      buffer_capacity = "5000MJ"
    },
    recharge_minimum = "400MJ",
    energy_usage = "700MW",
    -- per one charge slot
    charging_energy = "600MW",
    logistics_radius = 900,
    construction_radius = 1000,
    charge_approach_distance = 5,
    robot_slots_count = 14,
    material_slots_count = 14,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, 
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, 
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, 
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, 
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, 
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}, 
    },
    base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/roboport/roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/roboports/roboport-mk4-base.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2, 7.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 19.25),
          hr_version =
          {
            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            scale = 0.5
          }
        }
      }
    },
    base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5, 5),
        scale = 0.5
      }
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75, -61.25),
        scale = 0.5
      }
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25, -29.5),
        scale = 0.5
      }
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25,-9.75),
        scale = 0.5
      }
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,

    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
      }
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      }
    },

    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
  },
	
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-4d",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-passive-provider-4d"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 50000,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-passive-provider.png",
      priority = "extra-high",
      width = 66,
      height = 74,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      scale = 0.5
    },

  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-4d",
    icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-active-provider-4d"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 50000,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-active-provider.png",
      priority = "extra-high",
      width = 66,
      height = 74,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      scale = 0.5
    },

  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-4d",
    icon = "__base__/graphics/icons/logistic-chest-storage.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-storage-4d"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 50000,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-storage.png",
      priority = "extra-high",
      width = 66,
      height = 74,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      scale = 0.5
    },

  },
  {
    type = "explosion",
    name = "nuke-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Darkstar_utilities__/graphics/entity/big-explosion.png",
        priority = "extra-high",
        width = 197,
        height = 245,
        frame_count = 47,
        line_length = 6,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0.1875, -0.75},
        animation_speed = 0.25,
        scale = 40
      }
    },
    light = {intensity = 1, size = 50},
    sound =
    {
      {
        filename = "__base__/sound/fight/large-explosion-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/fight/large-explosion-2.ogg",
        volume = 1.0
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 20,
            entity_name = "explosion-remnants-particle",
            initial_height = 0.5,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "megumin-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Darkstar_utilities__/graphics/entity/big-explosion.png",
        priority = "extra-high",
        width = 197,
        height = 245,
        frame_count = 47,
        line_length = 6,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0.1875, -0.75},
        animation_speed = 0.25,
        scale = 1000
      }
    },
    light = {intensity = 1, size = 50},
    sound =
    {
      {
        filename = "__base__/sound/fight/large-explosion-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/fight/large-explosion-2.ogg",
        volume = 1.0
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 20,
            entity_name = "explosion-remnants-particle",
            initial_height = 0.5,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          }
        }
      }
    }
  },
 {
    type = "storage-tank",
    name = "storage-tank-mk2",
    icon = "__base__/graphics/icons/storage-tank.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1.5, result = "storage-tank-mk2"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 1250,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    two_direction_only = true,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
      picture =
      {
        sheets =
        {
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
            priority = "extra-high",
            frames = 2,
            width = 110,
            height = 108,
            shift = util.by_pixel(0, 4),
            hr_version = {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank.png",
              priority = "extra-high",
              frames = 2,
              width = 219,
              height = 215,
              shift = util.by_pixel(-0.25, 3.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 146,
            height = 77,
            shift = util.by_pixel(30, 22.5),
            draw_as_shadow = true,
            hr_version = {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
            }
          }
        }
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24,
        hr_version = {
          filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
          priority = "extra-high",
          width = 34,
          height = 48,
          scale = 0.5
        }
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
        hr_version =
        {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1
        }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "underground-belt",
    name = "underground-belt-2",
    icon = "__base__/graphics/icons/underground-belt.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "underground-belt-2"},
    max_health = 150,
    corpse = "small-remnants",
    max_distance = 50,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = basic_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "fast-underground-belt",
    speed = 0.03125,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height =192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }

      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y= 192*2,
            scale = 0.5
          },

        }

      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }
      }
    }
  },

  {
    type = "underground-belt",
    name = "fast-underground-belt-2",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fast-underground-belt-2"},
    max_health = 160,
    corpse = "small-remnants",
    max_distance = 50,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = fast_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "express-underground-belt",
    speed = 0.0625,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height =192,
            scale = 0.5
          }
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*2,
            scale = 0.5
          }
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      }
    }
  },
  {
    type = "underground-belt",
    name = "express-underground-belt-2",
    icon = "__base__/graphics/icons/express-underground-belt.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "express-underground-belt-2"},
    max_health = 170,
    corpse = "small-remnants",
    max_distance = 50,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.09375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height =192,
            scale = 0.5
          }
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*2,
            scale = 0.5
          }
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      }
    }
  },
  {
    type = "inserter",
    name = "rapid-inserter",
    icon = "__Darkstar_utilities__/graphics/icons/rapid-inserter.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
	module_specification =
    {
      module_slots = 8
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "rapid-inserter"
    },
    max_health = 120,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "500kJ",
    energy_per_rotation = "500kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "50.4kW"
    },
    extension_speed = 1.70,
    rotation_speed = 1.70,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/rapid-inserter/rapid-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/rapid-inserter/rapid-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/rapid-inserter/rapid-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Darkstar_utilities__/graphics/entity/terra-inserter/terra-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    }
  },
  {
    type = "inserter",
    name = "terra-inserter",
    icon = "__Darkstar_utilities__/graphics/icons/terra-inserter.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = false,
	module_specification =
    {
      module_slots = 8
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "terra-inserter"
    },
    max_health = 120,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "900kJ",
    energy_per_rotation = "900kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "50.4kW"
    },
    extension_speed = 25.70,
    rotation_speed = 25.70,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-inserter/terra-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-inserter/terra-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/terra-inserter/terra-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Darkstar_utilities__/graphics/entity/terra-inserter/terra-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    }
  },
  {
    type = "inserter",
    name = "smart-terra-inserter",
    icon = "__Darkstar_utilities__/graphics/icons/smart-terra-inserter.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = False,
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "smart-terra-inserter"
    },
    max_health = 120,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "900kJ",
    energy_per_rotation = "900kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "50.4kW"
    },
    extension_speed = 1.70,
    rotation_speed = 1.70,
	filter_count = 5,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/smart-terra-inserter/smart-terra-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/smart-terra-inserter/smart-terra-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/smart-terra-inserter/smart-terra-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Darkstar_utilities__/graphics/entity/smart-terra-inserter/smart-terra-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    }
  },
  {
    type = "explosion",
    name = "railgun-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Darkstar_utilities__/graphics/entity/railgun-explosion.png",
        priority = "extra-high",
        width = 197,
        height = 245,
        frame_count = 47,
        line_length = 6,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0.1875, -0.75},
        animation_speed = 0.25,
                       
      }
    },
    light = {intensity = 1, size = 50},
    sound =
    {
      {
        filename = "__base__/sound/fight/large-explosion-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/fight/large-explosion-2.ogg",
        volume = 1.0
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 20,
            entity_name = "explosion-remnants-particle",
            initial_height = 0.5,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "antithetical-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Darkstar_utilities__/graphics/entity/antithetical-explosion.png",
        priority = "extra-high",
        width = 197,
        height = 245,
        frame_count = 47,
        line_length = 6,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0.1875, -0.75},
        animation_speed = 0.75,
                       
      }
    },
    light = {intensity = 1, size = 50},
    sound =
    {
      {
        filename = "__base__/sound/fight/large-explosion-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/fight/large-explosion-2.ogg",
        volume = 1.0
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 20,
            entity_name = "explosion-remnants-particle2",
            initial_height = 0.5,
            speed_from_center = 0.28,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          }
        }
      }
    }
  },
   {
    type = "explosion",
    name = "ship-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Darkstar_utilities__/graphics/entity/railgun-explosion.png",
        priority = "extra-high",
        width = 197,
        height = 245,
        frame_count = 47,
        line_length = 6,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0.1875, -0.75},
        animation_speed = 0.15,
        scale = 10
                       
      }
    },
    light = {intensity = 1, size = 500},
    sound =
    {
      {
        filename = "__base__/sound/fight/large-explosion-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/fight/large-explosion-2.ogg",
        volume = 1.0
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 2500,
            entity_name = "explosion-remnants-particle",
            initial_height = 0.5,
            speed_from_center = 0.38,
            speed_from_center_deviation = 0.45,
            initial_vertical_speed = 0.28,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          }
        }
      }
    }
  },
  {
    type = "particle",
    name = "explosion-remnants-particle2",
    flags = {"not-on-map"},
    life_time = 60 * 15,
    pictures =
    {
      sheet =
      {
        filename = "__Darkstar_utilities__/graphics/entity/explosion-particle2.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 10,
        animation_speed = 0.5,
        variation_count = 40
      }
    },
    shadows =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/explosion-particle/explosion-particle-shadow.png",
        priority = "extra-high",
        width = 48,
        height = 38,
        frame_count = 10,
        animation_speed = 0.5,
        variation_count = 40,
        shift = {0.0625, 0}
      }
    },
    regular_trigger_effect =
    {
      type = "create-trivial-smoke",
      smoke_name = "smoke-explosion-particle",
      starting_frame_deviation = 5,
      starting_frame_speed_deviation = 5,
      offset_deviation = {{-0.06, -0.06}, {0.06, 0.06}},
      speed_from_center = 0.007
    },
    regular_trigger_effect_frequency = 1,
    ended_in_water_trigger_effect =
    {
      type = "create-entity",
      entity_name = "water-splash"
    }
  },
  {
    type = "smoke-with-trigger",
    name = "poison-cloud2",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.7,
      line_length = 7,
      scale = 3,
    },
    slow_down_factor = 0.8,
    affected_by_wind = false,
    cyclic = true,
    duration = 20 * 20,
    fade_away_duration = 5 * 5,
    spread_duration = 10,
    color = { r = 0.2, g = 1, b = 1 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 22,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 16, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },
  {
    type = "smoke-with-trigger",
    name = "black-hole",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/black-hole.png",
      priority = "low",
      width = 1920,
      height = 1920,
      frame_count = 1,
      animation_speed = 1,
      line_length = 1,
      scale = 3,
    },
    slow_down_factor = 1,
    affected_by_wind = false,
    cyclic = true,
    duration = 155 * 20,
    fade_away_duration = 4 * 60,
    spread_duration = 10,
    color = { r = 1, g = 1, b = 1 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 88,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 160000, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },
  {
    type = "smoke-with-trigger",
    name = "poison-cloud3",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.4,
      line_length = 7,
      scale = 9,
    },
    slow_down_factor = 1,
    affected_by_wind = false,
    cyclic = true,
    duration = 1 * 20,
    fade_away_duration = 0 * 0,
    spread_duration = 10,
    color = { r = 0, g = 1, b = 1 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 26,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 46, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-4d",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-requester-4d"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 50000,
    logistic_mode = "requester",
	logistic_slots_count = 32,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-requester.png",
      priority = "extra-high",
      width = 66,
      height = 74,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      scale = 0.5
    },
  },
  {
    type = "logistic-container",
    name = "logistic-chest-buffer-4d",
    icon = "__base__/graphics/icons/logistic-chest-buffer.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-buffer-4d"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 50000,
    logistic_mode = "buffer",
	logistic_slots_count = 32,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-buffer.png",
      priority = "extra-high",
      width = 66,
      height = 72,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      scale = 0.5
    },
  },
  
  ----Lights
  {
    type = "lamp",
    name = "red-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/red-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "red-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 6, size = 15, color = {r=1, g=0, b=0}},
    light_when_colored = {intensity = 1, size = 30, color = {r=1, g=0, b=0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/red-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },
  },
  {
    type = "lamp",
    name = "blue-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/blue-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "blue-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 9, size = 15, color = {r=0, g=0.3, b=1}},
    light_when_colored = {intensity = 1, size = 30, color = {r=1, g=0, b=0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/blue-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },

  },
  {
    type = "lamp",
    name = "yellow-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/yellow-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "yellow-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 6, size = 15, color = {r=1, g=1, b=0}},
    light_when_colored = {intensity = 1, size = 30, color = {r=1, g=1, b=0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/yellow-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },
  },
  {
    type = "lamp",
    name = "green-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/green-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "green-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 6, size = 15, color = {r=0, g=1, b=0}},
    light_when_colored = {intensity = 1, size = 30, color = {r=1, g=0, b=0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/green-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },
	  },
  {
    type = "lamp",
    name = "purple-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/purple-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 6, size = 15, color = {r=0.6, g=0, b=1}},
    light_when_colored = {intensity = 1, size = 30, color = {r=0.6, g=0, b=1}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/purple-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },
  },
  {
    type = "lamp",
    name = "cyan-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/purple-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cyan-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 6, size = 15, color = {r=0, g=1, b=1}},
    light_when_colored = {intensity = 1, size = 30, color = {r=0, g=1, b=1}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/cyan-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },
  },
  {
    type = "lamp",
    name = "white-lamp",
    icon = "__Darkstar_utilities__/graphics/entity/lights/purple-on.png",
	    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "white-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "3KW",
    light = {intensity = 6, size = 15, color = {r=1, g=1, b=1}},
    light_when_colored = {intensity = 1, size = 30, color = {r=1, g=1, b=1}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/light-off.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    picture_on =
    {
      filename = "__Darkstar_utilities__/graphics/entity/lights/white-on.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0, -0},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },
  },
  --------------Storage
  {
    type = "logistic-container",
    name = "logistic-house-passive-provider",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-house-passive-provider"},
    max_health = 150,
    corpse = "small-remnants",
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    fast_replaceable_group = "container",
    inventory_size = 2000,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-passive-provider.png",
      priority = "extra-high",
      width = 550,
      height = 550,
      shift = {0.1, 0}
    },

  },
  {
    type = "logistic-container",
    name = "logistic-house-buffer",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-house-buffer"},
    max_health = 150,
    corpse = "small-remnants",
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    fast_replaceable_group = "container",
    inventory_size = 2000,
    logistic_mode = "buffer",
    logistic_slots_count = 32,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-buffer.png",
      priority = "extra-high",
      width = 550,
      height = 550,
      shift = {0.1, 0}
    },

  },
  {
    type = "logistic-container",
    name = "logistic-house-active-provider",
    icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-house-active-provider"},
    max_health = 150,
    corpse = "small-remnants",
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    fast_replaceable_group = "container",
    inventory_size = 2000,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-active-provider.png",
      priority = "extra-high",
      width = 550,
      height = 550,
      shift = {0.1, 0}
    },

  },
  {
    type = "logistic-container",
    name = "logistic-house-storage",
    icon = "__base__/graphics/icons/logistic-chest-storage.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-house-storage"},
    max_health = 150,
    corpse = "small-remnants",
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    fast_replaceable_group = "container",
    inventory_size = 2000,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-storage.png",
      priority = "extra-high",
      width = 550,
      height = 550,
      shift = {0.1, 0}
    },

  },
  {
    type = "logistic-container",
    name = "logistic-house-requester",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-house-requester"},
    max_health = 150,
    corpse = "small-remnants",
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    fast_replaceable_group = "container",
    inventory_size = 2000,
    logistic_mode = "requester",
	logistic_slots_count = 32,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse-requester.png",
      priority = "extra-high",
      width = 550,
      height = 550,
      shift = {0.1, 0}
    },

  },
  {
    type = "container",
    name = "storage-house",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
	    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "storage-house"},
    max_health = 150,
    corpse = "small-remnants",
	collision_box = {{-8.5, -5.0}, {3.0, 7.0}},
	selection_box = {{-8.5, -5.0}, {3.0, 7.0}},
    fast_replaceable_group = "container",
    inventory_size = 2000,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__Darkstar_utilities__/graphics/entity/storage/warehouse.png",
      priority = "extra-high",
      width = 550,
      height = 550,
      shift = {0.1, 0}
    },

  },
  {
    type = "underground-belt",
    name = "terra-underground-belt",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-underground-belt"},
    max_health = 170,
    corpse = "small-remnants",
    max_distance = 9,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed =  0.29375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height =192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }

      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y= 192*2,
            scale = 0.5
          },

        }

      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }
      }
    }
  },

  {
    type = "underground-belt",
    name = "terra-underground-belt2",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-underground-belt2"},
    max_health = 170,
    corpse = "small-remnants",
    max_distance = 9,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.59375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height =192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }

      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y= 192*2,
            scale = 0.5
          },

        }

      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }

        }
      }
    }
  },

  {
    type = "underground-belt",
    name = "terra-underground-belt-long",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-underground-belt-long"},
    max_health = 170,
    corpse = "small-remnants",
    max_distance = 50,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed =  0.29375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height =192,
            scale = 0.5
          }
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra2.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*2,
            scale = 0.5
          }
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      }
    }
  },

  {
    type = "underground-belt",
    name = "terra-underground-belt2-long",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "terra-underground-belt2-long"},
    max_health = 170,
    corpse = "small-remnants",
    max_distance = 50,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = express_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.59375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height =192,
            scale = 0.5
          }
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__Darkstar_utilities__/graphics/entity/belt/underground-terra.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*2,
            scale = 0.5
          }
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      }
    }
  },

  {
    type = "unit-spawner",
    name = "biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    icon_size = 32,
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 350,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 15
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15
      },
      {
        type = "fire",
        decrease = 3,
        percent = 60
      }
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    map_generator_bounding_box = {{-4.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    -- in ticks per 1 pu
    pollution_absorption_absolute = 20,
    pollution_absorption_proportional = 0.01,
    corpse = "biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    max_count_of_owned_units = 7,
    max_friends_around_to_spawn = 5,
    loot =
    {
      {
        count_max = 60,
        count_min = 30,
        item = "chitin",
        probability = 0.55
      }
    },
    animations =
    {
      spawner_idle_animation(0, biter_spawner_tint),
      spawner_idle_animation(1, biter_spawner_tint),
      spawner_idle_animation(2, biter_spawner_tint),
      spawner_idle_animation(3, biter_spawner_tint)
    },
    integration =
    {
      sheet = spawner_integration()
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", {{0.0, 0.3}, {0.6, 0.0}}}
                     if not data.is_demo then
                       -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
                       -- this means for example that when the evolution_factor is 0.45 the probability of spawning
                       -- a small biter is 66% while probability for medium biter is 33%.
                       res[2] = {"medium-biter", {{0.2, 0.0}, {0.6, 0.3}, {0.7, 0.1}}}
                       -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/8, big-biter 4/8, behemoth biter 3/8
                       res[3] = {"big-biter", {{0.5, 0.0}, {1.0, 0.4}}}
                       res[4] = {"behemoth-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                     end
                     return res
                   end)(),
    -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 2.5 seconds
    spawning_cooldown = {360, 150},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_autoplace.enemy_spawner_autoplace(0),
    call_for_help_radius = 50
  },

  {
    type = "unit",
    name = "behemoth-biter-2",
    order="b-b-d",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    icon_size = 32,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 3000,
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 12,
        percent = 10
      },
      {
        type = "explosion",
        decrease = 12,
        percent = 10
      }
    },
    spawning_time_modifier = 12,
    healing_per_tick = 0.1,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters =
    {
      type = "projectile",
      range = 1.5,
      cooldown = 50,
      ammo_type = make_unit_melee_ammo_type(90),
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(behemoth_biter_scale, behemoth_biter_tint1, behemoth_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.3,
    distance_per_frame = 0.32,
    -- in pu
    pollution_to_join_attack = 400,
    corpse = "behemoth-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.7),
    dying_sound = make_biter_dying_sounds(0.8),
    run_animation = biterrunanimation(behemoth_biter_scale, behemoth_biter_tint1, behemoth_biter_tint2),
    --idle_animation = biteridleanimation(behemoth_biter_scale, small_biter_tint1, small_biter_tint2),
    ai_settings = biter_ai_settings
  },
  
  }
  )