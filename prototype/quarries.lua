  ---laser quarries
  require("util")

local ent  -- placeholder for building each entity

-- Deep Quarry
ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-passive-provider"])
ent.max_health = 150000
ent.name = "laser-quarry"
ent.minable.result = "laser-quarry"
ent.corpse = "big-remnants"
ent.collision_box = {{-12.1, -9.5}, {11.5, 10}}
ent.selection_box = {{-12.1, -9.5}, {11.5, 10}}
ent.collision_mask = { "item-layer", "object-layer", "water-tile"}
ent.icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon4.png"
ent.picture = 
	{
	  filename = "__Darkstar_utilities__/graphics/entity/quarry.png",
	  width = 818,
	  height = 678,
	  shift = {0, 0}
	}
ent.inventory_size = 40
data:extend({ent})

-- Advanced Quarry
ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-passive-provider"])
ent.max_health = 150000
ent.name = "laser-quarry2"
ent.minable.result = "laser-quarry2"
ent.corpse = "big-remnants"
ent.collision_box = {{-24.2, -20.2}, {23.2, 20}}
ent.selection_box = {{-24.2, -20.2}, {23.2, 20}}
ent.collision_mask = { "item-layer", "object-layer", "water-tile",}
ent.icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon4.png"
ent.picture = 
	{
	  filename = "__Darkstar_utilities__/graphics/entity/quarry2.png",
	  width = 1638,
	  height = 1414,
	  shift = { 0.34375, 0.046875}
	}
ent.inventory_size = 600
data:extend({ent})

ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-passive-provider"])
ent.max_health = 150000
ent.name = "laser-quarry3"
ent.minable.result = "laser-quarry3"
ent.corpse = "big-remnants"
ent.collision_box = {{-3.2, -3.0}, {2.9, 2.8}}
ent.selection_box = {{-3.2, -3.0}, {2.9, 2.8}}
ent.collision_mask = { "item-layer", "object-layer", "water-tile", "player-layer"}
ent.icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon4.png"
ent.picture = 
	{
	  filename = "__Darkstar_utilities__/graphics/entity/space-quarry.png",
	  width = 237,
	  height = 210,
	  shift = { 11, 11}
	}
ent.inventory_size = 2600
data:extend({ent})

ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-passive-provider"])
ent.max_health = 150000
ent.name = "laser-quarry4"
ent.minable.result = "laser-quarry4"
ent.corpse = "big-remnants"
ent.collision_box = {{-12.1, -9.5}, {4.5, 5}}
ent.selection_box = {{-12.1, -9.5}, {4.5, 5}}
ent.collision_mask = { "item-layer", "object-layer", "water-tile", "player-layer"}
ent.icon = "__Darkstar_utilities__/graphics/icons/laser-drill-icon4.png"
ent.picture = 
	{
	  filename = "__Darkstar_utilities__/graphics/entity/space-quarry-2.png",
	  width = 818,
	  height = 678,
	  shift = { 0, 0}
	}
ent.inventory_size = 50000
data:extend({ent})

  ---laser quarries
  require("util")

local ent  -- placeholder for building each entity