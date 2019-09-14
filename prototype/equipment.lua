data:extend(
{
  {
    type = "generator-equipment",
    name = "dark-matter-reactor",
	categories = {"armor",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/dark-matter-2.png",
      width = 206,
      height = 207,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "1500kW"
  },

  {
    type = "generator-equipment",
    name = "vehicle-reactor",
	categories = {"vehicle",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/engine-room.png",
      width = 256,
      height = 256,
      priority = "medium"
    },
    shape =
    {
      width = 10,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "2.5GW"
  },
  
   {
    type = "active-defense-equipment",
    name = "advanced-electric-discharge-defense-equipment",
	categories = {"armor"},
    ability_icon =
    {
      filename = "__base__/graphics/equipment/discharge-defense-equipment-ability.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    sprite =
    {
      filename = "__base__/graphics/equipment/discharge-defense-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "804kJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      damage_modifier = 12,
      cooldown = 300,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "400kJ",
        speed = 2,
        action =
        {
          {
            type = "area",
            radius = 20,
            force = "enemy",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "blue-laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
    },
    automatic = true
  },
  
  {
    type = "active-defense-equipment",
    name = "advanced-laser-defense-equipment",
	categories = {"armor", "vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/smg-icon.png",
      width = 351,
      height = 516,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "0.6MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 1,
      damage_modifier = 0.4,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 10,
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-2.ogg",
        volume = 0.35,
		max_sounds_per_type = 2
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "0.5MJ",
        projectile = "laser-2",
        speed = 1,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-2",
                starting_speed = 1.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  
  {
    type = "active-defense-equipment",
    name = "advanced-laser-defense-equipment-mk2",
	categories = {"armor", "vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/sniper-icon.png",
      width = 351,
      height = 516,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "6MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 60,
      damage_modifier = 50,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 100,
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-1.ogg",
        volume = 1
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "4MJ",
        projectile = "laser-2",
        speed = 5,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-2",
                starting_speed = 3.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  
  {
    type = "active-defense-equipment",
    name = "advanced-laser-defense-equipment-mk3",
	categories = {"armor", "vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/rifle-icon.png",
      width = 351,
      height = 516,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "6MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 8,
      damage_modifier = 1.2,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25,
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/laser-3.ogg",
        volume = 0.35,
		max_sounds_per_type = 2
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "4MJ",
        projectile = "laser-2",
        speed = 1,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-2",
                starting_speed = 1.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  
  {
    type = "active-defense-equipment",
    name = "shoulder-tank-cannon",
	categories = {"armor", "vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/cannon-icon.png",
      width = 351,
      height = 516,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "9MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 350,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 200,
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/nuclear-explosion.ogg",
        volume = 0.35,
		max_sounds_per_type = 2
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "7MJ",
        projectile = "explosive-rocket-mk2",
        speed = 1,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "explosive-rocket-mk2",
                starting_speed = 1.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  
   {
    type = "active-defense-equipment",
    name = "shoulder-railgun",
	categories = {"armor", "vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/railgun-icon.png",
      width = 351,
      height = 516,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "16MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 350,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 200,
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/railgun-mk2.ogg",
        volume = 0.35,
		max_sounds_per_type = 2
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "14MJ",
        projectile = "railgun-mk2-round2",
        speed = 1,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "railgun-mk2-round2",
                starting_speed = 1.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },

  {
    type = "active-defense-equipment",
    name = "ship-cannon",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/ship-cannon.png",
      width = 960,
      height = 960,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "4GJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 15,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 200,
      sound =
      {
        filename = "__Darkstar_utilities__/sounds/nuclear-explosion.ogg",
        volume = 0.35,
		max_sounds_per_type = 2
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "2GJ",
        projectile = "explosive-rocket-mk2",
        speed = 2,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "explosive-rocket-mk2",
                starting_speed = 1.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  
  {
    type = "generator-equipment",
    name = "dark-matter-reactor-mk2",
	categories = {"armor",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/4D-power-3.png",
      width = 256,
      height = 256,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "5000kW"
  },
  
  {
    type = "movement-bonus-equipment",
    name = "advanced-exoskeleton-equipment",
	categories = {"armor"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/advanced-exoskeleton-equipment.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "40kW",
    movement_bonus = 1.5
  },

{
    type = "movement-bonus-equipment",
    name = "thruster-upgrade",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/thruster-upgrade.png",
      width = 672,
      height = 672,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15 ,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "100MW",
    movement_bonus = 2
  },

  {
    type = "roboport-equipment",
    name = "large-personal-roboport-equipment",
	categories = {"armor"},
    take_result = "large-personal-roboport-equipment",
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/large-roboport.png",
      width = 256,
      height = 256,
      priority = "medium"
    },
    shape =
    {
      width = 8,
      height = 8,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "135MJ",
      input_flow_limit = "3500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    energy_consumption = "0kW",

    robot_limit = 60,
    construction_radius = 70,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
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
    recharging_light = {intensity = 1.4, size = 15},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 25,
    charging_distance = 2.6,
    charging_threshold_distance = 5
  },
  {
    type = "roboport-equipment",
    name = "vehicle-roboport",
	categories = {"vehicle"},
    take_result = "large-personal-roboport-equipment",
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/large-roboport.png",
      width = 256,
      height = 256,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "6GW",
      input_flow_limit = "6GW",
      usage_priority = "secondary-input"
    },
    charging_energy = "5GW",
    energy_consumption = "5GW",

    robot_limit = 120,
    construction_radius = 170,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
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
    recharging_light = {intensity = 1.4, size = 15},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 25,
    charging_distance = 2.6,
    charging_threshold_distance = 5
  },
   {
    type = "energy-shield-equipment",
    name = "energy-shield-mk3-equipment",
	categories = {"armor",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/energy-shield-mk3-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 520,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "60KJ",
      input_flow_limit = "20KJ",
      usage_priority = "primary-input"
    },
    energy_per_shield = "200KJ"
  },

   {
    type = "energy-shield-equipment",
    name = "vehicle-shield",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/icons/vehicle-shield.png",
      width = 1244,
      height = 1244,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15,
      type = "full"
    },
    max_shield_value = 3020,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "900KJ",
      input_flow_limit = "100KJ",
      usage_priority = "primary-input"
    },
    energy_per_shield = "800KJ"
  },

   {
    type = "battery-equipment",
    name = "battery-mk3",
	categories = {"armor",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/battery-mk3.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1000MJ",
      input_flow_limit = "500MW",
      output_flow_limit = "500MW",
            usage_priority = "tertiary"
    }
  },
  {
    type = "battery-equipment",
    name = "battery-mk4",
	categories = {"armor",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/battery-mk4.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10000MJ",
      input_flow_limit = "5000MJ",
      output_flow_limit = "5000MJ",
            usage_priority = "tertiary"
    }
  },

   {
    type = "battery-equipment",
    name = "energy-liquid",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/research/energy-liquid.png",
      width = 144,
      height = 144,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 5,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10000MJ",
      input_flow_limit = "80000MW",
      output_flow_limit = "80000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.2
    }
  },
   {
    type = "battery-equipment",
    name = "energy-liquid-2",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/research/silo2-thin.png",
      width = 84,
      height = 212,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "80000MJ",
      input_flow_limit = "80000MW",
      output_flow_limit = "80000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.4
    }
  },
   {
    type = "battery-equipment",
    name = "energy-liquid-3",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo3.png",
      width = 793,
      height = 678,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "160000MJ",
      input_flow_limit = "80000MW",
      output_flow_limit = "80000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.6
    }
  },
  {
    type = "battery-equipment",
    name = "energy-liquid-U",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/research/energy-liquid2.png",
      width = 144,
      height = 144,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 5,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "20000MJ",
      input_flow_limit = "160000MW",
      output_flow_limit = "160000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.2
    }
  },
   {
    type = "battery-equipment",
    name = "energy-liquid-2-U",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/research/silo2-2-thin.png",
      width = 84,
      height = 212,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "160000MJ",
      input_flow_limit = "320000MW",
      output_flow_limit = "320000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.4
    }
  },
   {
    type = "battery-equipment",
    name = "energy-liquid-3-U",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/tank.png",
      width = 793,
      height = 678,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "320000MJ",
      input_flow_limit = "320000MW",
      output_flow_limit = "320000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.6
    }
  },
  {
    type = "battery-equipment",
    name = "energy-liquid-D",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/research/energy-liquid3-icon2.png",
      width = 144,
      height = 144,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 5,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "40000MJ",
      input_flow_limit = "640000MW",
      output_flow_limit = "640000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.2
    }
  },
   {
    type = "battery-equipment",
    name = "energy-liquid-2-D",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/research/silo2-3-thin.png",
      width = 84,
      height = 212,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "320000MJ",
      input_flow_limit = "640000MW",
      output_flow_limit = "640000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.4
    }
  },
   {
    type = "battery-equipment",
    name = "energy-liquid-3-D",
	categories = {"vehicle"},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/entity/energy-liquid/silo6.png",
      width = 793,
      height = 678,
      priority = "medium"
    },
    shape =
    {
      width = 15,
      height = 15,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "640000MJ",
      input_flow_limit = "640000MW",
      output_flow_limit = "640000MW",
            usage_priority = "tertiary",
      movement_bonus = -0.6
    }
  },
  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk4-equipment",
	categories = {"armor",},
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/energy-shield-mk4-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 80,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "2000kJ",
      input_flow_limit = "2000kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "60KJ"
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-equipment-mk2",
	categories = {"armor"},
    take_result = "personal-roboport-equipment-mk2",
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/equipment/personal-roboport-equipment-mk2.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "135MJ",
      input_flow_limit = "9500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    energy_consumption = "40kW",

    robot_limit = 40,
    construction_radius = 30,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
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
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5
  },
   {
    type = "solar-panel-equipment",
    name = "solar-panel-mk2",
    sprite =
    {
      filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel.png",
      width = 104,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 5,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "50000kW",
    categories = {"vehicle"}
  },
   {
    type = "solar-panel-equipment",
    name = "solar-panel-mk3",
    sprite =
    {
filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk2.png",
      width = 104,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 5,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "100000kW",
    categories = {"vehicle"}
  },
   {
    type = "solar-panel-equipment",
    name = "solar-panel-mk4",
    sprite =
    {
filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk3.png",
      width = 104,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 5,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "500000kW",
    categories = {"vehicle"}
  },
   {
    type = "solar-panel-equipment",
    name = "solar-panel-mk5",
    sprite =
    {
filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk4.png",
      width = 208,
      height = 192,
      priority = "medium"
    },
    shape =
    {
      width = 10,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "1000000kW",
    categories = {"vehicle"}
  },
   {
    type = "solar-panel-equipment",
    name = "solar-panel-mk6",
    sprite =
    {
filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk5.png",
      width = 208,
      height = 192,
      priority = "medium"
    },
    shape =
    {
      width = 10,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "5000000kW",
    categories = {"vehicle"}
  },
   {
    type = "solar-panel-equipment",
    name = "solar-panel-mk7",
    sprite =
    {
filename = "__Darkstar_utilities__/graphics/entity/solar-panel/advanced-solar-panel-mk6.png",
      width = 208,
      height = 192,
      priority = "medium"
    },
    shape =
    {
      width = 10,
      height = 10,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "10000000kW",
    categories = {"vehicle"}
  },
 }
 )