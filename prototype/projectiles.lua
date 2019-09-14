
capsule_smoke =
{
  {
    name = "smoke-fast",
    deviation = {0.15, 0.15},
    frequency = 1,
    position = {0, 0},
    starting_frame = 3,
    starting_frame_deviation = 5,
    starting_frame_speed_deviation = 5
  }
}

data:extend(
{
  {
    type = "projectile",
    name = "laser",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 5, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
      tint = {r=1.0, g=0.0, b=0.0},
      frame_count = 1,
      width = 12,
      height = 33,
      priority = "high",
      blend_mode = "additive"
    },
    speed = 0.15
  },
  {
    type = "projectile",
    name = "destroyer-capsule-2",

    acceleration = 0.205,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-entity",
          show_in_tooltip = true,
          entity_name = "behemoth-biter-2",
          offsets = {{-0.7, -0.7}}
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    enable_drawing_with_mask = true,
    animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",

          frame_count = 1,
          width = 42,
          height = 34,
          priority = "high"
        },
        {
          filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule-mask.png",

          frame_count = 1,
          width = 42,
          height = 34,
          priority = "high",
          apply_runtime_tint = true,
        },
      },
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule-shadow.png",

      frame_count = 1,
      width = 48,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
  {
    type = "projectile",
    name = "laser-2",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 5, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 3.5, size = 10},
    animation =
    {
      filename = "__Darkstar_utilities__/graphics/entity/laser2.png",
      tint = {r=1.0, g=0.0, b=1.0},
      frame_count = 1,
      width = 6,
      height = 100,
      priority = "high",
      blend_mode = "additive"
    },
    speed = 0.15
  },
   { -- Napalm
    type = "ammo",
    name = "Napalm",
    icon = "__base__/graphics/icons/flamethrower-ammo.png",
	icon_size = 32,

    ammo_type =
    {
      {
        source_type = "vehicle",
        consumption_modifier = 1.5,
        category = "flamethrower",
        target_type = "position",
        clamp_position = true,

        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "stream",
            stream = "handheld-flamethrower-fire-stream",
            max_length = 60,
            duration = 820,
          }
        }
      }
    },
    magazine_size = 500,
    subgroup = "ammo",
    order = "e[napalm]",
    stack_size = 100
  },
  {
    type = "projectile",
    name = "rocket",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 60, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
  {
    type = "projectile",
    name = "explosive-rocket-mk2",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "big-explosion"
          },
          {
            type = "create-entity",
            entity_name = "poison-cloud3"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 12.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 240, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "big-explosion"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 5.5, size = 16},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
  {
    type = "projectile",
    name = "explosive-rocket-mk3",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "nuke-explosion"
          },
          {
            type = "create-entity",
            entity_name = "poison-cloud3"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 56.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 5240, type = "explosion"}
                  },
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 5.5, size = 202},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
        
  {
    type = "projectile",
    name = "railgun-mk2-round",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "railgun-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 26.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 1240, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "railgun-explosion"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 5.5, size = 202},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
        
  {
    type = "projectile",
    name = "railgun-mk2-round2",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "railgun-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 65.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 1540, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "railgun-explosion"
                  },
                  {
                   type = "create-sticker",
                   sticker = "slowdown-sticker"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 5.5, size = 202},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
  
  
  {
    type = "projectile",
    name = "black-hole2",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
                  {
                   type = "create-entity",
                   entity_name = "black-hole"
                  },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 88,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 9540000000000, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "railgun-explosion"
                  },
                  {
                   type = "create-sticker",
                   sticker = "slowdown-sticker"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 5.5, size = 202},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
        
  {
    type = "projectile",
    name = "megumin-round",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "megumin-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 60000.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 100240, type = "explosion"}
                  },
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 9.5, size = 702},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
        
  {
    type = "ammo",
    name = "shotgun-shells-mk2",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
	icon_size = 32,

    ammo_type =
    {
      category = "shotgun-shells-mk2",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 44,
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket-mk2",
          starting_speed = 3,
          direction_deviation = 0.3,
          range_deviation = 0.6,
          max_range = 55,
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "b[shotgun]-b[piercing]",
    stack_size = 100
  },
        
  {
    type = "ammo",
    name = "shotgun-shells-mk3",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
	icon_size = 32,

    ammo_type =
    {
      category = "shotgun-shells-mk3",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 128,
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket-mk2",
          starting_speed = 3,
          direction_deviation = 3.0,
          range_deviation = 0.0,
          max_range = 60,
        }
      }
    },
    magazine_size = 2,
    subgroup = "ammo",
    order = "b[shotgun]-b[piercing]",
    stack_size = 100
  },
        
  {
    type = "ammo",
    name = "shotgun-shells-mk4",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
	icon_size = 32,

    ammo_type =
    {
      category = "shotgun-shells-mk4",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 528,
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket-mk3",
          starting_speed = 6,
          direction_deviation = 5.9,
          range_deviation = 0.0,
          max_range = 6000,
        }
      }
    },
    magazine_size = 2,
    subgroup = "ammo",
    order = "b[shotgun]-b[piercing]",
    stack_size = 100
  },
        
  {
    type = "projectile",
    name = "piercing-shotgun-pellet",

    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 6, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
   {
    type = "projectile",
    name = "atomic-rocket3",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
              repeat_count = 100,
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.5,
              speed_deviation = 0.2
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = -400, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              repeat_count = 2000,
              radius = 35,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-healing-wave",
                starting_speed = 0.5
              }
            }
          }
        }
      }
    },
    light = {intensity = 0.8, size = 35},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
  {
    type = "projectile",
    name = "atomic-bomb-healing-wave",

    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-heal"
            }
          }
        }
      },
      {
        type = "area",
        radius = 9,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = {amount = -400, type = "explosion"}
          }
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    },
    shadow =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "atomic-rocket2",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
              repeat_count = 100,
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 2,
              speed_deviation = 0.2
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 10000, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              repeat_count = 7500,
              radius = 300.5,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5
              }
            }
          }
        }
      }
    },
    light = {intensity = 0.8, size = 15},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
  {
    type = "projectile",
    name = "atomic-bomb-wave2",

    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 3.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = {amount = 800, type = "explosion"}
          }
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    },
    shadow =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "nuke-grenade",

    acceleration = 0.01,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "create-entity",
            entity_name = "big-explosion"
            },
            {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        radius = 25,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 20000, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "big-explosion"
            }
          }
        }
      }
    },
    light = {intensity = 5.5, size = 50},
    animation =
    {
      filename = "__base__/graphics/entity/grenade/grenade.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "cannon-projectile",

    collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 300,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 150 , type = "physical"}
          },
          {
            type = "damage",
            damage = { amount = 50 , type = "explosion"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
  {
    type = "projectile",
    name = "explosive-cannon-projectile",

    collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 30,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 30, type = "physical"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "big-explosion",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 4,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 80, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
  {
    type = "projectile",
    name = "grenade",

    acceleration = 0.005,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "create-entity",
            entity_name = "medium-explosion"
            },
            {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        radius = 6.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 25, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "explosion"
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/grenade/grenade.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "defender-capsule",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "defender",
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/defender-capsule.png",
      frame_count = 1,
      width = 28,
      height = 20,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  },
  {
    type = "projectile",
    name = "distractor-capsule",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "distractor",
            offsets = {{0.5, -0.5},{-0.5, -0.5},{0, 0.5}}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule.png",
      frame_count = 1,
      width = 36,
      height = 30,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
  {
    type = "projectile",
    name = "destroyer-capsule",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-entity",
          show_in_tooltip = true,
          entity_name = "destroyer",
          offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0}}
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
  {
    type = "projectile",
    name = "poison-capsule",

    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-entity",
          entity_name = "poison-cloud"
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  },
  {
    type = "projectile",
    name = "slowdown-capsule",

    acceleration = 0.005,
    action =
    {
      type = "area",
      radius = 9.5,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-sticker",
          sticker = "slowdown-sticker"
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  }
}
)
