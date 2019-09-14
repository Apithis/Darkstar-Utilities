require("util")
require("config")

function check_interfaces()
	local entity = array[count]
	if entity then
	  if entity.valid then
		if entity.is_connected_to_electric_network() then
		  local power = 99999999999999999999
		  entity.power_production = this_power
		  entity.electric_buffer_size = this_power
		end
	  else
		array[count] = nil
	  end
	end
	if count >= max then
	  count = 1
	else
	  count = count + 1
	end
  end

  function check_interfaces()
	local entity = array[count]
	if entity then
	  if entity.valid then
		if entity.is_connected_to_electric_network() then
		  local power = 99999999999999999999
		  entity.power_production = this_power
		  entity.electric_buffer_size = this_power
		end
	  else
		array[count] = nil
	  end
	end
	if count >= max then
	  count = 1
	else
	  count = count + 1
	end
  end

  function built_interface(entity)
	if not entity.valid then return end
	local power = 99999999999999999999
	entity.energy = 99999999999999999999
	entity.power_production = power
	end

	script.on_event(defines.events.on_research_finished, function(event)
    if event.research.name == 'any-launch' then
        if not remote.interfaces["silo_script"] then return end
         remote.call("silo_script", "add_tracked_item", "planet-quarry")
         remote.call("silo_script", "add_tracked_item", "dark-matter-drones")
         remote.call("silo_script", "add_tracked_item", "antithetic-drones")
         remote.call("silo_script", "add_tracked_item", "norbornadiene-drones")
				 remote.call("silo_script", "add_tracked_item", "star-matter-drones")
				 remote.call("silo_script", "add_tracked_item", "star-stone")
         remote.call("silo_script", "add_tracked_item", "star-research")
         remote.call("silo_script", "add_tracked_item", "star-uranium")
         remote.call("silo_script", "add_tracked_item", "star-lead")
				 remote.call("silo_script", "add_tracked_item", "star-gold")
				 remote.call("silo_script", "add_tracked_item", "star-iron")
         remote.call("silo_script", "add_tracked_item", "star-copper")
         remote.call("silo_script", "add_tracked_item", "star-coal")
         remote.call("silo_script", "add_tracked_item", "dark-matter-capsule-empty")
				 remote.call("silo_script", "add_tracked_item", "antithetical-capsule-empty")
				 remote.call("silo_script", "add_tracked_item", "norbornadiene-capsule-empty")
				 remote.call("silo_script", "add_tracked_item", "antithetic-container")
				 remote.call("silo_script", "add_tracked_item", "asteroid-quarry")
         remote.call("silo_script", "add_tracked_item", "antithetic-container")
    end
end)

script.on_init(setup_remote_call)
script.on_configuration_changed(setup_remote_call)

  function setup_remote_call()
    remote.call(interface_name, "set_show_launched_without_satellite", false)
end

script.on_event(defines.events.on_research_finished, function(event)
    if event.research.name == 'any-launch' then
        function setup_remote_call()
            remote.call(interface_name, "set_show_launched_without_satellite", false)
        end
    end
end)
---------------------------------------------------------
-- Constants
local laser_quarry_period = 34		
local laser_quarry_2_period = 16
local laser_quarry_3_period = 8	
local laser_quarry_4_period = 0.1
---------------------------------------------------------
-- Process all ongoing events
function onTick()
	if not mixed_ores then populateMixedOreList() end
	
	if (game.tick % laser_quarry_period == 0) then
		processQuarries(global.laser_quarries)
	end
	if (game.tick % laser_quarry_2_period == 0) then
		processQuarries(global.laser_quarries_2)
	end
	if (game.tick % laser_quarry_3_period == 0) then
		processQuarries(global.laser_quarries_3)
	end
	if (game.tick % laser_quarry_4_period == 0) then
		processQuarries(global.laser_quarries_4)
	end
end

function populateMixedOreList()
	mixed_ores = {}
	for __, ore in pairs(potential_ores) do
		if game.item_prototypes[ore] then
			table.insert(mixed_ores, ore)
		end
	end
end

---------------------------------------------------------
-- Initialize various objects
function onInit()
	global.laser_quarries = global.laser_quarries or {}
	global.laser_quarries_2 = global.laser_quarries_2 or {}
	global.laser_quarries_3 = global.laser_quarries_3 or {}
	global.laser_quarries_4 = global.laser_quarries_4 or {}
	global.laser_quarries_5 = global.laser_quarries_5 or {}
	script.on_event(defines.events.on_tick, onTick)
end
script.on_init(onInit)

---------------------------------------------------------
-- On reload, make sure that processing continues
function onLoad()
	script.on_event(defines.events.on_tick, onTick)
end
script.on_load(onLoad)

---------------------------------------------------------
-- On mod update, 
function onConfigurationChange(change_data)
	if global.quarries then
		global.laser_quarries = util.table.deepcopy(global.quarries)
		global.laser_quarries_2 = util.table.deepcopy(global.quarries)
		global.laser_quarries_3 = util.table.deepcopy(global.quarries)
		global.laser_quarries_4 = util.table.deepcopy(global.quarries)
		global.quarries = nil
	end
	global.laser_quarries = global.laser_quarries or {}
	global.laser_quarries_2 = global.laser_quarries_2 or {}
	global.laser_quarries_3 = global.laser_quarries_3 or {}
	global.laser_quarries_4 = global.laser_quarries_4 or {}
	script.on_event(defines.events.on_tick, onTick)
end
script.on_configuration_changed(onConfigurationChange)

---------------------------------------------------------
-- Keep track of built objects
function builtEntity(event)
	local ent = event.created_entity
	local name = ent.name
	local entity = event.created_entity
	if name == "laser-quarry" then
		table.insert(global.laser_quarries, ent)
	elseif name == "laser-quarry2" then
		table.insert(global.laser_quarries_2, ent)
	elseif name == "laser-quarry3" then
		table.insert(global.laser_quarries_3, ent)
	elseif name == "laser-quarry4" then
		table.insert(global.laser_quarries_4, ent)
		local entity = event.created_entity
	elseif entity.name == "geothermal-generator" then	
		  built_interface(entity)
		elseif entity.name == "geothermal-generator-mk2" then	
		  built_interface(entity)
		elseif entity.name == "geothermal-generator-mk3" then	
		  built_interface(entity)
		elseif entity.name == "think-tank" then	
		built_interface(entity)
	  elseif entity.name == "think-tank-mk2" then	
			built_interface(entity)
		elseif entity.name == "think-tank-mk3" then	
		  built_interface(entity)
	  elseif entity.name == "dyson" then	
			built_interface(entity)
		elseif entity.name == "multiverse-tear" then	
			built_interface(entity)
		elseif entity.name == "interstellar-dominion" then	
		  built_interface(entity)
		return
end
end
script.on_event(defines.events.on_built_entity, builtEntity)
script.on_event(defines.events.on_robot_built_entity, builtEntity)
script.on_event(defines.events.on_pre_player_mined_item , MinedEntity)
script.on_event(defines.events.on_entity_died , MinedEntity)
script.on_event(defines.events.on_robot_pre_mined  , MinedEntity)

---------------------------------------------------------
-- Simulate mining in deep quarries
function processQuarries(quarries)
	for index, quarry in pairs(quarries) do
		if quarry and quarry.valid then
			local inventory = quarry.get_inventory(defines.inventory.item_main)
			if result_ore == "mixed" then
				ore = insertRandomOre(inventory, ore_per_second)
			else
				inventory.insert({name = result_ore, count = ore_per_second})
			end
			quarry.surface.pollute(quarry.position, deep_mining_pollution)
		else
			table.remove(quarries, index)
		end
	end
end

---------------------------------------------------------
-- Random ore if the quarry gives "mixed" ore
function insertRandomOre(inventory)
	for i = 3, ore_per_second do
		inventory.insert({name = mixed_ores[math.random(1, #mixed_ores)], count = 164})
	end
end

