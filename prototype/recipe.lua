data:extend(
{

    {
		type="recipe",
		name="nuke-grenade2",
		enabled="false",
		ingredients =
		{
			 {"uranium-fuel-cell", 2000},
			 {"nuke-grenade", 1000},
		},
		result="nuke-grenade2"
	},
	
	{
		type="recipe",
		name="raw-fish",
		energy_required = 60,
		category = "generators",
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="raw-fish"
	},

	{
		type="recipe",
		name="deep-iron-ore",
		energy_required = 1,
		category = "generators",
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="iron-ore",
		result_count= "10",
	},

	{
		type="recipe",
		name="deep-gold-ore",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="gold-ore",
		result_count= "10",
	},

	{
		type="recipe",
		name="deep-lead-ore",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="lead-ore",
		result_count= "10",
	},

	{
		type="recipe",
		name="deep-copper-ore",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="copper-ore",
		result_count= "10",
	},

	{
		type="recipe",
		name="deep-uranium-ore",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="uranium-ore",
		result_count= "10",
	},

	{
		type="recipe",
		name="deep-stone-ore",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="stone",
		result_count= "10",
	},

	{
		type="recipe",
		name="grown-brain",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="brain",
		result_count= "2",
	},
	
	{
		type="recipe",
		name="biodome-wood",
		category = "generators",
		energy_required = 1,
		enabled = true,
		hidden = true,
		ingredients =
		{
		},
		result="wood",
		result_count= "50",
	},
	
	{
		type="recipe",
		name="diamond",
		energy_required = 500,
		enabled = true,
		ingredients =
		{
			{"coal", 500},
		},
		result="diamond",
		result_count= "2",
	},

	{
		type="recipe",
		name="fish-farm",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"raw-fish", 20},
			{"glass", 25},
			{"iron-plate", 10},
		},
		result="fish-farm",
	},

	{
		type="recipe",
		name="iron-probe",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"radar", 30},
			{"glass", 25},
			{"steel-plate", 25},
			{"diamond", 5},
			{"electric-engine-unit", 5},
		},
		result="iron-probe",
	},

	{
		type="recipe",
		name="gold-probe",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"radar", 30},
			{"glass", 25},
			{"steel-plate", 25},
			{"diamond", 5},
			{"electric-engine-unit", 5},
		},
		result="gold-probe",
	},

	{
		type="recipe",
		name="lead-probe",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"radar", 30},
			{"glass", 25},
			{"steel-plate", 25},
			{"diamond", 5},
			{"electric-engine-unit", 5},
		},
		result="lead-probe",
	},

	{
		type="recipe",
		name="copper-probe",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"radar", 30},
			{"glass", 25},
			{"steel-plate", 25},
			{"diamond", 5},
			{"electric-engine-unit", 5},
		},
		result="copper-probe",
	},
	
	{
		type="recipe",
		name="uranium-probe",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"radar", 30},
			{"glass", 25},
			{"steel-plate", 25},
			{"diamond", 5},
			{"electric-engine-unit", 5},
		},
		result="uranium-probe",
	},

	{
		type="recipe",
		name="stone-probe",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"radar", 30},
			{"glass", 25},
			{"steel-plate", 25},
			{"diamond", 5},
			{"electric-engine-unit", 5},
		},
		result="stone-probe",
	},

	{
		type="recipe",
		name="brain-grower",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"bio-computer", 10},
			{"glass", 50},
		},
		result="brain-grower",
	},

	{
		type="recipe",
		name="biodome",
		energy_required = 1000,
		enabled = false,
		ingredients =
		{
			{"wood", 5000},
			{"glass", 1200},
			{"steel-plate", 500},
			{"white-lamp", 100},
		},
		result="biodome",
    },

	{
		type="recipe",
		name="destroyer-capsule-2",
		enabled="false",
		ingredients =
		{
			 {"hacked-biter", 1},
		},
		result="destroyer-capsule-2"
    },
	
    {
		type="recipe",
		name="hacked-biter",
		energy_required = 60,
		enabled="false",
		ingredients =
		{
			 {"chitin", 1000},
			 {"link", 1},
			 {"exoskeleton-equipment", 2},
			 {"brain", 1},
		},
		result="hacked-biter"
    },
	
	{
		type="recipe",
		name="terra-splitter",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"express-splitter", 1},
			 {"speed-module-2", 1},
		},
		result="terra-splitter"
	},
	
	{
		type="recipe",
		name="assembling-machine-4",
		energy_required = 10,
		normal =
		{
		  enabled = false,
		  ingredients =
		  {
			{"speed-module-3", 1},
			{"assembling-machine-1", 2}
		  },
		  result = "assembling-machine-4"
		},
		expensive =
		{
		  enabled = false,
		  ingredients =
		  {
			{"speed-module-4", 1},
			{"assembling-machine-1", 2}
		  },
		  result = "assembling-machine-4"
		}
    },
	
	{
		type="recipe",
		name="terra-loader",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"terra-inserter", 1},
			 {"terra-transport-belt", 5},
		},
		result="terra-loader"
    },
	
	{
		type="recipe",
		name="geothermal-generator",
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 20},
			 {"copper-plate", 20},
			 {"gold-plate", 30},
			 {"iron-plate", 40},
		},
		result="geothermal-generator"
	},
	
	{
		type="recipe",
		name="geothermal-generator-mk2",
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 80},
			 {"copper-plate", 100},
			 {"gold-plate", 150},
			 {"iron-plate", 90},
		},
		result="geothermal-generator-mk2"
	},
	
	{
		type="recipe",
		name="geothermal-generator-mk3",
		enabled="false",
		ingredients =
		{
			 {"advanced-circuit", 50},
			 {"copper-plate", 200},
			 {"gold-plate", 500},
			 {"energy-liquid", 5},
		},
		result="geothermal-generator-mk3"
    },

	{
		type="recipe",
		name="deep-hold",
		enabled="false",
		ingredients =
		{
			 {"storage-house", 1},
			 {"copper-cable", 300},
			 {"gold-plate", 100},
			 {"laser-core", 10},
		 	 {"leaded-glass", 100},
			 {"computer", 1},
		},
		result="deep-hold"
    },

	{
		type="recipe",
		name="dark-pulse",
		enabled="false",
		ingredients =
		{
			 {"copper-cable", 600},
			 {"gold-plate", 400},
			 {"laser-core", 30},
		 	 {"leaded-glass", 50},
			 {"assult-rifle", 1},
			 {"computer", 10},
		},
		result="dark-pulse"
    },

   {
		type="recipe",
		name="end-game",
		enabled="false",
		ingredients =
		{
			 {"lead-plate", 600},
			 {"gold-plate", 400},
			 {"laser-core", 30},
		 	 {"leaded-glass", 50},
			 {"artillery-turret", 20},
			 {"assult-rifle-mk2", 40},
			 {"quantum-fuel", 250},
			 {"computer", 50},
		},
		result="end-game"
    },

	{
		type="recipe",
		name="nautilus",
		enabled="false",
		ingredients =
		{
			 {"copper-cable", 400},
			 {"gold-plate", 400},
			 {"laser-core", 30},
		 	 {"leaded-glass", 50},
			 {"computer", 10},
		},
		result="nautilus"
    },

    {
		type="recipe",
		name="healing-wave-rocket",
		category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="blood", amount=500},
			 {"copper-cable", 400},
			 {"gold-plate", 400},
		},
		result="healing-wave-rocket"
	},
	
	{
		type="recipe",
		name="sample",
		category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="blood", amount=20},
			 {"iron-ore", 10},
			 {"wood", 1},
		},
		result="sample",
		result_count= "10",
	},

	{
		type="recipe",
		name="sample2",
		category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="blood", amount=50},
			 {"raw-fish", 1},
		},
		result="sample",
		result_count= "50",
	},
	
	{
		type="recipe",
		name="chitin",
		category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="blood", amount=20},
			 {"sample", 2},
		},
		result="chitin"
    },

	{
		type="recipe",
		name="thruster-upgrade",
		category="chemistry",
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="dark-matter", amount=500},
			 {"gold-plate", 500},
			 {"laser-core", 100},
		 	 {"leaded-glass", 500},
			 {"speed-module-3", 1},
		},
		result="thruster-upgrade"
    },

	{
		type="recipe",
		name="vehicle-roboport",
		enabled="false",
		ingredients =
		{
			 {"gold-plate", 500},
			 {"large-personal-roboport-equipment", 4},
		},
		result="vehicle-roboport"
    },

    {
		type="recipe",
		name="end-game-bullet",
		enabled="false",
		ingredients =
		{
			 {"lead-plate", 600},
			 {"gold-plate", 400},
			 {"quantum-fuel", 1050},
		},
		result="end-game-bullet"
    },

	{
		type="recipe",
		name="end-game-bullet-2",
		enabled="false",
		ingredients =
		{
			 {"lead-plate", 900},
			 {"gold-plate", 900},
			 {"quantum-fuel", 50},
		},
		result="end-game-bullet-2"
    },
	
	{
		type="recipe",
		name="link",
		enabled="false",
		energy_required = 40,
		category = "chemistry",
		ingredients =
		{
			 {"chitin", 10},
			 {"micro-processor", 10},
			 {type="fluid", name="acetylene", amount=5},
		},
		result="link",
		result_count = 2
    },
		
	{
		type="recipe",
		name="fuse-box",
		enabled="false",
		ingredients =
		{
			 {"copper-cable", 5},
			 {"module-componant", 5},
		},
		result="fuse-box"
    },
	
	{
		type="recipe",
		name="fan",
		enabled="false",
		ingredients =
		{
			 {"copper-cable", 5},
			 {"iron-gear-wheel", 4},
		},
		result="fan"
    },
	
	{
		type="recipe",
		name="gpu",
		enabled="false",
		ingredients =
		{
			 {"micro-processor", 10},
			 {"fan", 1},
		},
		result="gpu"
    },
	
	{
		type="recipe",
		name="cpu",
		enabled="false",
		ingredients =
		{
			 {"micro-processor", 5},
			 {"fan", 2},
			 {"iron-plate", 5},
			 {"copper-cable", 5},
		},
		result="cpu"
    },
	
    {
		type="recipe",
		name="ram",
		enabled="false",
		ingredients =
		{
			 {"micro-processor", 5},
			 {"copper-plate", 2},
		},
		result="ram"
    },
	
	{
		type="recipe",
		name="diode",
		enabled="false",
		ingredients =
		{
			 {"glass", 1},
			 {"lead-plate", 1},
		},
		result="diode",
		result_count=2
    },
	
    {
		type="recipe",
		name="mother-board",
		enabled="false",
		ingredients =
		{
			 {"diode", 72},
			 {"copper-cable", 20},
			 {"plastic-bar", 10},
		},
		result="mother-board",
    },
	
	{
		type="recipe",
		name="computer",
		energy_required = 6,
		enabled="false",
		ingredients =
		{
	         {"mother-board", 1},
			 {"ram", 2},
			 {"cpu", 1},
			 {"gpu", 2},
		},
		result="computer"
	},

	{
		type="recipe",
		name="underground-belt-2",
		enabled="false",
		ingredients =
		{
			 {"underground-belt", 8},
		},
		result="underground-belt-2",
		result_count=2
    },

    {
		type="recipe",
		name="fast-underground-belt-2",
		enabled="false",
		ingredients =
		{
			 {"fast-underground-belt", 8},
		},
		result="fast-underground-belt-2",
		result_count=2
    },

	
	{
		type="recipe",
		name="express-underground-belt-2",
		enabled="false",
		ingredients =
		{
			 {"express-underground-belt", 8},
		},
		result="express-underground-belt-2",
		result_count=2
	},

	{
		type="recipe",
		name="terra-underground-belt",
		enabled="false",
		ingredients =
		{
			 {"terra-transport-belt", 2},
			 {"speed-module-3", 1},

		},
		result="terra-underground-belt",
		result_count=2
	},
	
	{
		type="recipe",
		name="terra-underground-belt2",
		enabled="false",
		ingredients =
		{
			 {"terra-transport-belt", 2},
			 {"speed-module-3", 1},
		},
		result="terra-underground-belt2",
		result_count=2
    },
	
	{
		type="recipe",
		name="terra-underground-belt-long",
		enabled="false",
		ingredients =
		{
			 {"terra-underground-belt", 8},
		},
		result="terra-underground-belt-long",
		result_count=2
	},
	
	{
		type="recipe",
		name="terra-underground-belt2-long",
		enabled="false",
		ingredients =
		{
			 {"terra-underground-belt", 8},
		},
		result="terra-underground-belt2-long",
		result_count=2
    },

	
    {
		type="recipe",
		name="terra-electric-furnace",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
		     {"steel-plate", 10},
			 {"laser-core", 2},
			 {"leaded-glass", 10},
		},
		result="terra-electric-furnace"
    },
	
	{
		type="recipe",
		name="asteroid-quarry",
		energy_required = 50,
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk3", 4},
			 {"laser-quarry2", 3},
			 {"energy-liquid-2", 9},
			 {"roboport-mk2", 3},
			 {"logistic-robot-mk2", 45},
		},
		result="asteroid-quarry"
    },
	
	{
		type="recipe",
		name="planet-quarry",
		energy_required = 50,
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk5", 4},
			 {"asteroid-quarry", 3},
			 {"energy-liquid-3", 6},
			 {"roboport-mk4", 3},
			 {"logistic-robot-mk2", 75},
		},
		result="planet-quarry"
    },
	
	{
		type="recipe",
		name="laser-core",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
		     {"diamond", 1},
			 {"electronic-circuit", 5},
			 {"leaded-glass", 10},
		},
		result="laser-core"
    },

    {
		type="recipe",
		name="laser-miner",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"electric-engine-unit", 15},
	         {"iron-plate", 500},
			 {"laser-core", 5},
			 {"copper-cable", 500},
			 {"leaded-glass", 500},
		},
		result="laser-miner"
    },
	 
    {
		type="recipe",
		name="laser-miner2",
		energy_required = 15,
		enabled="false",
		ingredients =
		{
			 {"electric-engine-unit", 25},
	         {"iron-plate", 700},
			 {"laser-core", 10},
			 {"laser-miner", 1},
			 {"leaded-glass", 2000},
		},
		result="laser-miner2"
    },
	
    {
		type="recipe",
		name="laser-miner3",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"electric-engine-unit", 40},
	         {"iron-plate", 700},
			 {"laser-core", 15},
			 {"laser-miner2", 1},
			 {"leaded-glass", 2000},
		},
		result="laser-miner3"
    },
	
	{
		type="recipe",
		name="laser-miner4",
		energy_required = 25,
		enabled="false",
		ingredients =
		{
			 {"electric-engine-unit", 80},
	         {"iron-plate", 7000},
			 {"laser-core", 20},
			 {"laser-miner3", 1},
			 {"speed-module-25", 2},
			 {"leaded-glass", 4000},
		},
		result="laser-miner4"
    },

	 {
		type="recipe",
		name="neural-miner",
		category = "chemistry",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"bio-computer", 15},
	         {"iron-plate", 500},
			 {"laser-core", 5},
			 {"copper-cable", 500},
			 {"leaded-glass", 500},
			 {type="fluid", name="antithetical-matter", amount=50},
		},
		result="neural-miner"
    },
	 
    {
		type="recipe",
		name="neural-miner-2",
		category = "chemistry",
		energy_required = 15,
		enabled="false",
		ingredients =
		{
			 {"bio-computer", 25},
	         {"iron-plate", 600},
			 {"laser-core", 15},
			 {"leaded-glass", 1000},
			 {type="fluid", name="antithetical-matter", amount=200},
		},
		result="neural-miner-2"
    },
	
    {
		type="recipe",
		name="neural-miner-3",
		category = "chemistry",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"bio-computer", 45},
	         {"iron-plate", 1200},
			 {"laser-core", 30},
			 {"leaded-glass", 2000},
			 {type="fluid", name="antithetical-matter", amount=500},
		},
		result="neural-miner-3"
    },
	
	{
		type="recipe",
		name="neural-miner-4",
		category = "chemistry",
		energy_required = 25,
		enabled="false",
		ingredients =
		{
			 {"bio-computer", 75},
	         {"iron-plate", 1800},
			 {"laser-core", 60},
			 {"leaded-glass", 3000},
			 {type="fluid", name="antithetical-matter", amount=1000},
		},
		result="neural-miner-4"
    },
	
    {
		type="recipe",
		name="laser-quarry",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"electric-engine-unit", 210},
			 {"laser-core", 150},
			 {"laser-miner3", 4},
			 {"solar-panel-mk2", 3},
			 {"energy-liquid-2", 15},
		},
		result="laser-quarry"
    },
	
	{
		type="recipe",
		name="laser-quarry2",
		energy_required = 60,
		enabled="false",
		ingredients =
		{
			 {"electric-engine-unit", 360},
			 {"laser-core", 75},
			 {"laser-quarry", 12},
			 {"solar-panel-mk3", 4},
			 {"energy-liquid-2", 30},
		},
		result="laser-quarry2"
    },

    {
		type="recipe",
		name="large-lamp",
		energy_required = 5,
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 100},
			 {"copper-cable", 100},
			 {"glass", 100},
		},
		result="large-lamp"
    },

    {
		type="recipe",
		name="stone-furnace-mk2",
		energy_required = 5,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 10},
	         {"iron-plate", 5},
		},
		result="stone-furnace-mk2"
    },
	
	{
		type="recipe",
		name="sand",
		enabled="true",
		ingredients =
		{
			 {"stone", 10},
		},
		result="sand",
		result_count = 20
    },

	{
		type="recipe",
		name="brain",
	    category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {"chitin", 100},
			 {"copper-cable", 5},
			 {"link", 1},
			 {type="fluid", name="blood", amount=50},
		},
		result="brain",
		result_count="3"
    },

	{
		type="recipe",
		name="bio-computer",
		enabled="false",
		ingredients =
		{
			 {"brain", 1},
			 {"energy-liquid", 1},
			 {"quantum-blood", 1},
		},
		result="bio-computer",
	},

	{
		type="recipe",
		name="bio-research",
		enabled="false",
		ingredients =
		{
			 {"bio-computer", 2},
		},
		result="neural-science-pack",
		result_count = 4
	},
	
	{
		type="recipe",
		name="think-tank",
	    category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {"brain", 250},
			 {"speed-module-5", 10},
			 {"energy-liquid", 10},
			 {"quantum-blood", 10},
		},
		result="think-tank",
	},
	
	{
		type="recipe",
		name="think-tank-mk2",
	    category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {"brain", 1250},
			 {"speed-module-10", 5},
			 {"energy-liquid", 75},
			 {"quantum-blood", 50},
		},
		result="think-tank-mk2",
	},
	
	{
		type="recipe",
		name="think-tank-mk3",
	    category = "chemistry",
		enabled="false",
		ingredients =
		{
			 {"brain", 12500},
			 {"speed-module-25", 5},
			 {"energy-liquid", 300},
			 {"quantum-blood", 500},
		},
		result="think-tank-mk3",
    },
	
	{
		type="recipe",
		name="sand2",
		enabled="true",
		ingredients =
		{
			 {"sand", 2},
		},
		result="sand2",
    },

	{
		type="recipe",
		name="terra-transport-belt",
		enabled="false",
		ingredients =
		{
			 {"express-transport-belt", 30},
	         {"speed-module", 1},
		},
		result="terra-transport-belt",
		result_count = 30
    },

    {
		type="recipe",
		name="terra-transport-belt-mk2",
		enabled="false",
		ingredients =
		{
			 {"express-transport-belt", 30},
	         {"speed-module-3", 1},
		},
		result="terra-transport-belt-mk2",
		result_count = 30
  },

  {
	type = "recipe",
	name = "antithetic-coolant",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	 {type="fluid", name="antithetical-matter", amount=200},
	 {type="fluid", name="dark-matter", amount=200},
	 {"iron-plate", 20},
   },
   result= "antithetic-coolant",
   result_count = 15
 },

 {
	type="recipe",
	name="star-miner-drone",
	enabled="false",
	ingredients =
	{
		 {"computer", 1},
		 {"steel-plate", 10},
		 {"antithetic-coolant", 10},
		 {"electric-engine-unit", 3},
	},
	result="star-miner-drone",
	result_count= "2",
},

{
	type="recipe",
	name="drone-swarm",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 80},
		 {"antithetic-coolant", 80},
	},
	result="drone-swarm",
},

{
	type="recipe",
	name="interstellar-swarm",
	enabled="false",
	ingredients =
	{
		 {"bio-computer", 50},
		 {"quantum-blood", 150},
	},
	result="interstellar-swarm",
},

{
	type="recipe",
	name="multiverse-swarm",
	enabled="false",
	ingredients =
	{
		 {"think-tank-mk3", 10},
		 {"quantum-blood", 1000},
	},
	result="multiverse-swarm",
},

{
	type="recipe",
	name="dark-matter-drones",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 20},
		 {"antithetic-coolant", 10},
		 {"antithetic-container", 50},
	},
	result="dark-matter-drones",
},

{
	type="recipe",
	name="antithetic-drones",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 20},
		 {"antithetic-coolant", 20},
		 {"antithetic-container", 50},
	},
	result="antithetic-drones",
},

{
	type="recipe",
	name="norbornadiene-drones",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 20},
		 {"antithetic-coolant", 10},
		 {"antithetic-container", 50},
	},
	result="norbornadiene-drones",
},

{
	type="recipe",
	name="star-matter-drones",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 20},
		 {"antithetic-coolant", 10},
		 {"antithetic-container", 250},
	},
	result="star-matter-drones",
},

{
	type="recipe",
	name="dark-matter-drones2",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 60},
		 {"antithetic-coolant", 10},
		 {"antithetic-container", 500},
	},
	result="dark-matter-drones2",
},

{
	type="recipe",
	name="antithetic-drones2",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 60},
		 {"antithetic-coolant", 20},
		 {"antithetic-container", 500},
	},
	result="antithetic-drones2",
},

{
	type="recipe",
	name="norbornadiene-drones2",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 60},
		 {"antithetic-coolant", 10},
		 {"antithetic-container", 500},
	},
	result="norbornadiene-drones2",
},

{
	type="recipe",
	name="star-matter-drones2",
	enabled="false",
	ingredients =
	{
		 {"star-miner-drone", 60},
		 {"antithetic-coolant", 10},
		 {"antithetic-container", 1050},
	},
	result="star-matter-drones2",
},

{
	type="recipe",
	name="dark-matter-capsule-empty",
	icon = "__Darkstar_utilities__/graphics/icons/dark-matter2.png",
	icon_size = 32,
	category = "chemistry",
	enabled="false",
	subgroup = "fluid-recipes",
	ingredients =
	{
		 {"dark-matter-capsule", 1},
	},
	results=
    {
		{type="fluid", name="dark-matter", amount=15},
	  },
},

{
	type="recipe",
	name="antithetical-capsule-empty",
	icon = "__Darkstar_utilities__/graphics/icons/antithetical-capsule-drain.png",
	icon_size = 32,
	category = "chemistry",
	enabled="false",
	subgroup = "fluid-recipes",
	ingredients =
	{
		 {"antithetical-capsule", 1},
	},
	results=
    {
		{type="fluid", name="antithetical-matter", amount=15},
	  },
},

{
	type="recipe",
	name="norbornadiene-capsule-empty",
	icon = "__Darkstar_utilities__/graphics/icons/norbornadiene-drain.png",
	icon_size = 32,
	category = "chemistry",
	enabled="false",
	subgroup = "fluid-recipes",
	ingredients =
	{
		 {"norbornadiene-capsule", 1},
	},
	results=
    {
		{type="fluid", name="norbornadiene", amount=15},
	  },
},

{
	type="recipe",
	name="dark-matter-capsule-empty2",
	icon = "__Darkstar_utilities__/graphics/icons/dark-matter3.png",
	icon_size = 32,
	category = "chemistry",
	enabled="false",
	subgroup = "fluid-recipes",
	ingredients =
	{
		 {"dark-matter-capsule2", 1},
	},
	results=
    {
		{type="fluid", name="dark-matter", amount=150},
	  },
},

{
	type="recipe",
	name="antithetical-capsule-empty2",
	icon = "__Darkstar_utilities__/graphics/icons/antithetical-capsule-drain2.png",
	icon_size = 32,
	category = "chemistry",
	enabled="false",
	subgroup = "fluid-recipes",
	ingredients =
	{
		 {"antithetical-capsule2", 1},
	},
	results=
    {
		{type="fluid", name="antithetical-matter", amount=150},
	  },
},

{
	type="recipe",
	name="norbornadiene-capsule-empty2",
	icon = "__Darkstar_utilities__/graphics/icons/norbornadiene-drain2.png",
	icon_size = 32,
	category = "chemistry",
	enabled="false",
	subgroup = "fluid-recipes",
	ingredients =
	{
		 {"norbornadiene-capsule2", 1},
	},
	results=
    {
		{type="fluid", name="norbornadiene", amount=150},
	  },
},

{
	type = "recipe",
	name = "antithetic-container",
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients =
   {
	 {type="fluid", name="antithetical-matter", amount=10},
	 {"iron-plate", 10},
	 {"leaded-glass", 15},
   },
   result= "antithetic-container",
   result_count= "10",
 },

 {
	type = "recipe",
	name = "star-coal",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "coal",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-copper",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "copper-ore",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-iron",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "iron-ore",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-gold",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "gold-ore",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-lead",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "lead-ore",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-uranium",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "uranium-ore",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-stone",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "stone",
   result_count= "50",
 },

 {
	type = "recipe",
	name = "star-research",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter", 1},
   },
   result= "space-science-pack",
   result_count= "2",
 },

 {
	type = "recipe",
	name = "star-coal2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "coal",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-copper2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "copper-ore",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-iron2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "iron-ore",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-gold2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "gold-ore",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-lead2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "lead-ore",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-uranium2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "uranium-ore",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-stone2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "stone",
   result_count= "350",
 },

 {
	type = "recipe",
	name = "star-research2",
	category = "chemistry",
	energy_required = 70,
	enabled = false,
	ingredients =
   {
	{"star-matter2", 1},
   },
   result= "space-science-pack",
   result_count= "30",
 },

{
	type="recipe",
	name="dyson",
	enabled="false",
	ingredients =
	{
		 {"swarm-reciever", 30000},
	},
	result="dyson",
	result_count = 1
},

{
	type="recipe",
	name="multiverse-tear",
	enabled="false",
	ingredients =
	{
		 {"multiverse-swarm-reciever", 30000},
	},
	result="multiverse-tear",
	result_count = 1
},

{
	type="recipe",
	name="interstellar-dominion",
	enabled="false",
	ingredients =
	{
		 {"interstellar-swarm-reciever", 30000},
	},
	result="interstellar-dominion",
	result_count = 1
},

{
		type="recipe",
		name="empty-filter",
		enabled="false",
		ingredients =
		{
			 {"iron-plate", 10},
			 {"electronic-circuit", 1},
		},
		result="empty-filter",
		result_count = 3
	},
	
	{
		type="recipe",
		name="empty-filter-2",
		enabled="false",
		ingredients =
		{
			 {"bio-computer", 1},
			 {"antithetic-coolant", 1},
		},
		result="empty-filter-2",
		result_count = 3
    },

   {
		type="recipe",
		name="air-filter-charge-x1",
		enabled="false",
		ingredients =
		{
			 {"empty-filter", 1},
			 {"coal", 5},
		},
		result="air-filter-charge-x1"
    },

	{
		type="recipe",
		name="air-filter-charge-x2",
		enabled="false",
		ingredients =
		{
			 {"empty-filter", 2},
			 {"coal", 15},
		},
		result="air-filter-charge-x2",
    },

	{
		type="recipe",
		name="air-filter-charge-x3",
		enabled="false",
		ingredients =
		{
			 {"empty-filter", 3},
			 {"coal", 30},
		},
		result="air-filter-charge-x3",
    },

	{
		type="recipe",
		name="air-filter-charge-x4",
		enabled="false",
		ingredients =
		{
			 {"empty-filter", 30},
			 {"coal", 100},
		},
		result="air-filter-charge-x4",
	},
	
	{
		type="recipe",
		name="air-filter-charge-x5",
		enabled="false",
		ingredients =
		{
			 {"empty-filter-2", 30},
			 {"brain", 1},
		},
		result="air-filter-charge-x5",
    },
	
	{
		type="recipe",
		name="air-filter",
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 5},
			 {"iron-plate", 30},
			 {"electronic-circuit", 100},
		},
		result="air-filter"
    },

	{
		type="recipe",
		name="air-filter-mk2",
		enabled="false",
		ingredients =
		{
			 {"air-filter", 1},
			 {"electronic-circuit", 250},
			 {"advanced-circuit", 25},
		},
		result="air-filter-mk2"
    },

	{
		type="recipe",
		name="air-filter-mk3",
		enabled="false",
		ingredients =
		{
			 {"air-filter-mk2", 1},
			 {"electronic-circuit", 500},
			 {"advanced-circuit", 100},
		},
		result="air-filter-mk3"
    },

	{
		type="recipe",
		name="air-filter-mk4",
		enabled="false",
		ingredients =
		{
			 {"air-filter-mk3", 1},
			 {"electronic-circuit", 1200},
			 {"advanced-circuit", 200},
		},
		result="air-filter-mk4"
	},
	
	{
		type="recipe",
		name="air-filter-mk5",
		enabled="false",
		ingredients =
		{
			 {"air-filter-mk4", 1},
			 {"computer", 3},
		},
		result="air-filter-mk5"
    },

  {
		type="recipe",
		name="solar-panel-mk2",
		energy_required = 5,
		enabled="false",
		ingredients =
		{
			 {"advanced-photovoltaic-cells", 25},
			 {"fuse-box", 1},
		},
		result="solar-panel-mk2"
   },

	{
		type="recipe",
		name="solar-panel-mk2-G",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk2", 1},
			 {"electronic-circuit", 50},
			 {"copper-plate", 50},
			 {"gold-plate", 5},
			 {"iron-plate", 50},
		},
		result="solar-panel-mk2-G"
    },

    {
		type="recipe",
		name="solar-panel-mk3-G",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk3", 1},
			 {"electronic-circuit", 150},
			 {"copper-plate", 150},
			 {"gold-plate", 25},
			 {"iron-plate", 150},
		},
		result="solar-panel-mk3-G"
    },


    {
		type="recipe",
		name="solar-panel-mk4-G",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk4", 1},
			 {"electronic-circuit", 350},
			 {"copper-plate", 350},
			 {"gold-plate", 150},
			 {"copper-cable", 650},
			 {"iron-plate", 350},
		},
		result="solar-panel-mk4-G"
    },

	{
		type="recipe",
		name="solar-panel-mk5-G",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk5", 1},
			 {"processing-unit", 650},
			 {"copper-plate", 650},
			 {"gold-plate", 500},
			 {"iron-plate", 650},
		},
		result="solar-panel-mk5-G"
    },
	
   {
		type="recipe",
		name="solar-panel-mk6-G",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk6", 1},
			 {"processing-unit", 950},
			 {"copper-plate", 950},
			 {"gold-plate", 700},
			 {"iron-plate", 950},
		},
		result="solar-panel-mk6-G"
    },
	
	{
		type="recipe",
		name="solar-panel-mk7-G",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk7", 1},
			 {"processing-unit", 2500},
			 {"copper-plate", 2500},
			 {"gold-plate", 2000},
			 {"iron-plate", 2050},
		},
		result="solar-panel-mk7-G"
    },
	
	{
		type="recipe",
		name="solar-panel-mk2-G2",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk2-G", 1},
			 {"electronic-circuit", 50},
			 {"copper-plate", 50},
			 {"gold-plate", 50},
			 {"iron-plate", 50},
		},
		result="solar-panel-mk2-G2"
    },

    {
		type="recipe",
		name="solar-panel-mk3-G2",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk3-G", 1},
			 {"electronic-circuit", 150},
			 {"copper-plate", 150},
			 {"gold-plate", 250},
			 {"iron-plate", 150},
		},
		result="solar-panel-mk3-G2"
    },


    {
		type="recipe",
		name="solar-panel-mk4-G2",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk4-G", 1},
			 {"electronic-circuit", 350},
			 {"copper-plate", 350},
			 {"gold-plate", 500},
			 {"copper-cable", 650},
			 {"iron-plate", 350},
		},
		result="solar-panel-mk4-G2"
    },

	    {
		type="recipe",
		name="solar-panel-mk5-G2",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk5-G", 1},
			 {"processing-unit", 650},
			 {"copper-plate", 650},
			 {"gold-plate", 1000},
			 {"iron-plate", 650},
		},
		result="solar-panel-mk5-G2"
    },
	
	{
		type="recipe",
		name="solar-panel-mk6-G2",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk6-G", 1},
			 {"processing-unit", 1250},
			 {"copper-plate", 1250},
			 {"gold-plate", 2000},
			 {"iron-plate", 1250},
		},
		result="solar-panel-mk6-G2"
    },
	
	{
		type="recipe",
		name="solar-panel-mk7-G2",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk7-G", 1},
			 {"processing-unit", 3500},
			 {"copper-plate", 3500},
			 {"gold-plate", 4000},
			 {"iron-plate", 3050},
		},
		result="solar-panel-mk7-G2"
    },
	
	{
		type="recipe",
		name="solar-panel-mk2-G3",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk2-G2", 1},
			 {"electronic-circuit", 50},
			 {"copper-plate", 50},
			 {"leaded-glass", 50},
			 {"iron-plate", 50},
		},
		result="solar-panel-mk2-G3"
    },

    {
		type="recipe",
		name="solar-panel-mk3-G3",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk3-G2", 1},
			 {"electronic-circuit", 150},
			 {"copper-plate", 150},
			 {"leaded-glass", 250},
			 {"iron-plate", 150},
		},
		result="solar-panel-mk3-G3"
    },


    {
		type="recipe",
		name="solar-panel-mk4-G3",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk4-G2", 1},
			 {"electronic-circuit", 350},
			 {"copper-plate", 350},
			 {"leaded-glass", 500},
			 {"copper-cable", 650},
			 {"iron-plate", 350},
		},
		result="solar-panel-mk4-G3"
    },

	    {
		type="recipe",
		name="solar-panel-mk5-G3",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk5-G2", 1},
			 {"processing-unit", 650},
			 {"copper-plate", 650},
			 {"leaded-glass", 1000},
			 {"iron-plate", 650},
		},
		result="solar-panel-mk5-G3"
    },
	
	{
		type="recipe",
		name="solar-panel-mk6-G3",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk6-G2", 1},
			 {"processing-unit", 1550},
			 {"copper-plate", 1550},
			 {"gold-plate", 1200},
			 {"leaded-glass", 3000},
			 {"iron-plate", 1550},
		},
		result="solar-panel-mk6-G3"
    },
	
	{
		type="recipe",
		name="solar-panel-mk7-G3",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk7-G2", 1},
			 {"processing-unit", 4500},
			 {"copper-plate", 4500},
			 {"gold-plate", 4000},
			 {"leaded-glass", 5000},
			 {"iron-plate", 4050},
		},
		result="solar-panel-mk7-G3"
    },
	
	{
		type="recipe",
		name="solar-panel-mk2-GL",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk2-G3", 1},
			 {"processing-unit", 50},
			 {"copper-plate", 50},
			 {"energy-liquid", 5},
			 {"iron-plate", 50},
		},
		result="solar-panel-mk2-GL"
    },

    {
		type="recipe",
		name="solar-panel-mk3-GL",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk3-G3", 1},
			 {"processing-unit", 250},
			 {"copper-plate", 150},
			 {"energy-liquid", 15},
			 {"iron-plate", 150},
		},
		result="solar-panel-mk3-GL"
    },


    {
		type="recipe",
		name="solar-panel-mk4-GL",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk4-G3", 1},
			 {"processing-unit", 450},
			 {"copper-plate", 350},
			 {"energy-liquid", 30},
			 {"copper-cable", 650},
			 {"iron-plate", 350},
		},
		result="solar-panel-mk4-GL"
    },

	    {
		type="recipe",
		name="solar-panel-mk5-GL",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk5-G3", 1},
			 {"processing-unit", 650},
			 {"copper-plate", 650},
			 {"energy-liquid", 50},
			 {"iron-plate", 650},
		},
		result="solar-panel-mk5-GL"
    },
	
	{
		type="recipe",
		name="solar-panel-mk6-GL",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk6-G3", 1},
			 {"processing-unit", 2550},
			 {"copper-plate", 2550},
			 {"gold-plate", 2200},
			 {"energy-liquid", 500},
			 {"iron-plate", 2550},
		},
		result="solar-panel-mk6-GL"
    },
	
	{
		type="recipe",
		name="solar-panel-mk7-GL",
		enabled="false",
		ingredients =
		{
			 {"solar-panel-mk7-G3", 1},
			 {"processing-unit", 5500},
			 {"copper-plate", 5500},
			 {"gold-plate", 5000},
			 {"energy-liquid", 5000},
			 {"iron-plate", 5050},
		},
		result="solar-panel-mk7-GL"
    },
	
    {
		type="recipe",
		name="battery-mk3",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 10},
	         {"iron-plate", 20},
			 {"copper-plate", 20},
			 {"gold-plate", 10},
		},
		result="battery-mk3"
    },

	{
		type="recipe",
		name="advanced-laser-defense-equipment",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 2},
	         {"iron-plate", 200},
			 {"copper-plate", 200},
			 {"gold-plate", 300},
			 {"processing-unit", 600},
			 {"laser-turret", 5},
		},
		result="advanced-laser-defense-equipment"
    },

    {
		type="recipe",
		name="advanced-laser-defense-equipment-mk2",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 2},
	         {"iron-plate", 200},
			 {"copper-plate", 200},
			 {"gold-plate", 300},
			 {"processing-unit", 700},
			 {"laser-turret", 15},
		},
		result="advanced-laser-defense-equipment-mk2"
    },

	{
		type="recipe",
		name="advanced-laser-defense-equipment-mk3",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 2},
	         {"iron-plate", 200},
			 {"copper-plate", 200},
			 {"gold-plate", 300},
			 {"processing-unit", 650},
			 {"laser-turret", 10},
		},
		result="advanced-laser-defense-equipment-mk3"
    },

	{
		type="recipe",
		name="shoulder-tank-cannon",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 2},
	         {"iron-plate", 200},
			 {"copper-plate", 200},
			 {"gold-plate", 300},
			 {"processing-unit", 1200},
			 {"rocket-launcher-mk3", 5},
		},
		result="shoulder-tank-cannon"
    },

	{
		type="recipe",
		name="shoulder-railgun",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 2},
	     {"iron-plate", 400},
			 {"copper-plate", 400},
			 {"gold-plate", 600},
			 {"processing-unit", 1500},
			 {"railgun-mk2", 2},
		},
		result="shoulder-railgun"
    },

    {
		type="recipe",
		name="nuke-grenade",
		enabled="false",
		ingredients =
		{
			 {"explosives", 20},
	         {"steel-plate", 20},
			 {"uranium-fuel-cell", 5},
		},
		result="nuke-grenade"
    },
	
	{
      type = "recipe",
      name = "seed-crystal",
      category = "chemistry",
      energy_required = 15,
      enabled = false,
      ingredients =
      {
      {type="fluid", name="sulfuric-acid", amount=10},
	  {type="item", name="iron-ore", amount=10},
    },
    result= "seed-crystal"
   },

    {
      type = "recipe",
      name = "energy-liquid",
      category = "chemistry",
      energy_required = 15,
      enabled = false,
      ingredients =
      {
      {type="fluid", name="quadricyclane", amount=10},
      {"iron-plate", 50},
      {"steel-plate", 10},
      {"leaded-glass", 50},
      {"copper-plate", 50}
    },
    result= "energy-liquid"
   },
   
   {
     type = "recipe",
     name = "energy-liquid-2",
     category = "chemistry",
     energy_required = 25,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="quadricyclane", amount=60},
      {"iron-plate", 500},
      {"steel-plate", 30},
      {"leaded-glass", 100},
      {"copper-plate", 250}
    },
    result= "energy-liquid-2"
  },

  {
     type = "recipe",
     name = "energy-liquid-3",
     category = "chemistry",
     energy_required = 35,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="quadricyclane", amount=600},
      {"iron-plate", 5000},
      {"steel-plate", 300},
      {"leaded-glass", 5000},
	  {"gold-plate", 5000},
      {"copper-plate", 2500}
    },
    result= "energy-liquid-3"
  },
   
   {
      type = "recipe",
      name = "energy-liquid-U",
      category = "chemistry",
      energy_required = 40,
      enabled = false,
      ingredients =
      {
      {type="fluid", name="quadricyclane", amount=20},
      {"iron-plate", 50},
      {"steel-plate", 10},
      {"leaded-glass", 50},
      {"copper-plate", 50}
    },
    result= "energy-liquid-U"
   },
   
   {
     type = "recipe",
     name = "energy-liquid-2-U",
     category = "chemistry",
     energy_required = 60,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="quadricyclane", amount=120},
      {"iron-plate", 500},
      {"steel-plate", 30},
      {"leaded-glass", 100},
      {"copper-plate", 250}
    },
    result= "energy-liquid-2-U"
  },

  {
     type = "recipe",
     name = "energy-liquid-3-U",
     category = "chemistry",
     energy_required = 80,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="quadricyclane", amount=1200},
      {"iron-plate", 5000},
      {"steel-plate", 300},
      {"leaded-glass", 5000},
	  {"gold-plate", 5000},
      {"copper-plate", 2500}
    },
    result= "energy-liquid-3-U"
  },

  {
      type = "recipe",
      name = "energy-liquid-D",
      category = "chemistry",
      energy_required = 40,
      enabled = false,
      ingredients =
      {
      {type="fluid", name="antithetical-matter", amount=20},
      {"iron-plate", 50},
      {"steel-plate", 10},
      {"leaded-glass", 50},
      {"copper-plate", 50}
    },
    result= "energy-liquid-D"
   },
   
   {
     type = "recipe",
     name = "energy-liquid-2-D",
     category = "chemistry",
     energy_required = 60,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="antithetical-matter", amount=120},
      {"iron-plate", 500},
      {"steel-plate", 30},
      {"leaded-glass", 100},
      {"copper-plate", 250}
    },
    result= "energy-liquid-2-D"
  },

  {
     type = "recipe",
     name = "energy-liquid-3-D",
     category = "chemistry",
     energy_required = 80,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="antithetical-matter", amount=1200},
      {"iron-plate", 5000},
      {"steel-plate", 300},
      {"leaded-glass", 5000},
	  {"gold-plate", 5000},
      {"copper-plate", 2500}
    },
    result= "energy-liquid-3-D"
  },

    {
     type = "recipe",
     name = "vehicle-reactor",
     category = "chemistry",
     energy_required = 80,
     enabled = false,
     ingredients =
    {
      {type="fluid", name="antithetical-matter", amount=1200},
      {"steel-plate", 300},
      {"leaded-glass", 500},
	  {"gold-plate", 2000},
      {"copper-plate", 2500}
    },
    result= "vehicle-reactor"
  },
   
   {
      type = "recipe",
      name = "hydrogen-D",
      category = "chemistry",
      energy_required = 200,
      enabled = false,
      ingredients =
      {
      {type="fluid", name="water", amount=500},
    },
    result= "hydrogen-D"
   },
   
   {
    type = "recipe",
    name = "rocket-silo-2",
	energy_required = 120,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1000},
      {"concrete", 1000},
      {"pipe", 100},
      {"computer", 50},
      {"electric-engine-unit", 200}
    },
    energy_required = 30,
    result = "rocket-silo-2",
    requester_paste_multiplier = 1
  },
  
  {
    type = "recipe",
    name = "rocket-silo-3",
	energy_required = 120,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 2000},
      {"concrete", 2000},
      {"pipe", 200},
      {"computer", 100},
      {"electric-engine-unit", 400}
    },
    energy_required = 60,
    result = "rocket-silo-3",
    requester_paste_multiplier = 1
  },

  {
    type = "recipe",
    name = "rocket-silo-4",
	energy_required = 120,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 2000},
      {"concrete", 2000},
      {"pipe", 200},
      {"computer", 100},
      {"electric-engine-unit", 400}
    },
    energy_required = 60,
    result = "rocket-silo-4",
    requester_paste_multiplier = 1
  },

  {
		type="recipe",
		name="explosive-rocket-mk2",
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 50},
			 {"copper-plate", 50},
			 {"iron-plate", 50},
			 {"explosives", 50},
		},
		result="explosive-rocket-mk2"
    },

    {
		type="recipe",
		name="railgun-mk2-round",
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 200},
			 {"copper-plate", 100},
			 {"iron-plate", 100},
			 {"diamond", 40},
             {"energy-liquid", 5},
		},
		result="railgun-mk2-round"
    },

  	{
		type="recipe",
		name="railgun-mk2",
		enabled="false",
		ingredients =
		{
		     {"processing-unit", 200},
			 {"electronic-circuit", 500},
			 {"diamond", 150},
			 {"advanced-circuit", 500},
			 {"steel-plate", 500},
             {"energy-liquid", 5},
		},
		result="railgun-mk2"
    },

    {
		type="recipe",
		name="railgun-mk2-round2",
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 200},
			 {"copper-plate", 100},
			 {"iron-plate", 100},
			 {"diamond", 50},
             {"energy-liquid", 30},
		},
		result="railgun-mk2-round2"
    },

    {
		type="recipe",
		name="black-hole",
		enabled="false",
		ingredients =
		{
			 {"dark-matter-reactor-mk2", 1},
			 {"dark-matter-reactor", 5},
		},
		result="black-hole"
    },

	{
		type="recipe",
		name="black-hole-launcher",
		enabled="false",
		ingredients =
		{
			 {"rocket-launcher-mk3", 1},
			 {"processing-unit", 1000},
			 {"dark-matter-reactor", 10},
		},
		result="black-hole-launcher"
    },

	{
		type="recipe",
		name="rocket-launcher-mk2",
		enabled="false",
		ingredients =
		{
			 {"processing-unit", 100},
			 {"electronic-circuit", 500},
			 {"diamond", 5},
			 {"advanced-circuit", 500},
			 {"steel-plate", 500},
		},
		result="rocket-launcher-mk2"
    },

	{
		type="recipe",
		name="assult-rifle",
		enabled="false",
		ingredients =
		{
			 {"computer", 1},
			 {"copper-plate", 50},
			 {"iron-plate", 50},
			 {"steel-plate", 50},
		},
		result="assult-rifle"
    },

	{
		type="recipe",
		name="bullet-mk2",
		enabled="false",
		ingredients =
		{
			 {"explosives", 20},
			 {"steel-plate", 50},
			 {"iron-plate", 100},
		},
		result="bullet-mk2"
    },

	{
		type="recipe",
		name="assult-rifle-mk2",
		enabled="false",
		ingredients =
		{
			 {"assult-rifle", 5},
			 {"speed-module-4", 1},
			 {"computer", 2},
		},
		result="assult-rifle-mk2"
    },

	{
		type="recipe",
		name="bullet-mk3",
		enabled="false",
		ingredients =
		{
			 {"explosives", 100},
			 {"iron-plate", 100},
			 {"steel-plate", 100},
			 {"energy-liquid", 5},
		},
		result="bullet-mk3"
    },

	{
		type="recipe",
		name="bullet-mk4",
		enabled="false",
		ingredients =
		{
			 {"explosives", 1000},
			 {"iron-plate", 1000},
			 {"steel-plate", 1000},
			 {"quantum-fuel", 500},
		},
		result="bullet-mk4"
    },

	{
		type="recipe",
		name="storage-tank-mk2",
		enabled="false",
		ingredients =
		{
			 {"iron-plate", 200},
			 {"steel-plate", 50},
		},
		result="storage-tank-mk2"
    },
	
	{
		type="recipe",
		name="rapid-inserter",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
		     {"fast-inserter", 1},
			 {"advanced-circuit", 10},
			 {"copper-plate", 10},
			 {"steel-plate", 5},
		},
		result="rapid-inserter"
    },

	{
		type="recipe",
		name="terra-inserter",
		energy_required = 10,
		category = "chemistry",
		enabled="false",
		ingredients =
		{
		     {"iron-gear-wheel", 300},
			 {"computer", 1},
			 {"copper-plate", 200},
			 {"steel-plate", 25},
			 {type="fluid", name="lubricant", amount=10},
		},
		result="terra-inserter"
    },

	{
		type="recipe",
		name="smart-terra-inserter",
		energy_required = 10,
		category = "chemistry",
		enabled="false",
		ingredients =
		{
		     {"iron-gear-wheel", 300},
			 {"computer", 3},
			 {"gold-plate", 200},
			 {"steel-plate", 25},
		     {type="fluid", name="lubricant", amount=10},
		},
		result="smart-terra-inserter"
	},
	
	{
        type = "recipe",
        name = "cooked-fish",
        category = "smelting",
        enabled = true,
        energy_required = 1.5,
        ingredients = {{"raw-fish", 1}},
        result = "cooked-fish"
    },

    {
        type = "recipe",
        name = "gold-plate",
        category = "smelting",
        enabled = true,
        energy_required = 7.5,
        ingredients = {{"gold-ore", 2}},
        result = "gold-plate"
    },
	
    {
        type = "recipe",
        name = "lead-plate",
        category = "smelting",
        enabled = true,
        energy_required = 9.5,
        ingredients = {{"lead-ore", 2}},
        result = "lead-plate"
    },
	
	{
        type = "recipe",
        name = "glass",
        category = "smelting",
        enabled = true,
        energy_required = 18.5,
        ingredients = {{"sand", 5}},
        result = "glass"
    },
	
    {
        type = "recipe",
        name = "silicon",
        category = "smelting",
        enabled = true,
        energy_required = 25.5,
        ingredients = {{"sand2", 2}},
        result = "silicon"
	},
	
	{
        type = "recipe",
        name = "charcoal",
        category = "smelting",
		enabled = true,
		hidden = true,
        energy_required = 3,
        ingredients = {{"wood", 2}},
        result = "coal",
    },

   {
        type = "recipe",
        name = "air-filter-charge-mk1",
        category = "filters",
		enabled = true,
		hidden = true,
        energy_required = 8,
        ingredients = {{"air-filter-charge-x1", 1}},
        result = "empty-filter",
    },

	   {
        type = "recipe",
        name = "air-filter-charge-mk2",
        category = "filters",
		enabled = true,
		hidden = true,
        energy_required = 64,
        ingredients = {{"air-filter-charge-x2", 1}},
        result = "empty-filter",
		result_count = "2"
    },

	   {
        type = "recipe",
        name = "air-filter-charge-mk3",
        category = "filters",
		enabled = true,
		hidden = true,
        energy_required = 128,
        ingredients = {{"air-filter-charge-x3", 1}},
        result = "empty-filter",
		result_count = "3"
    },

	{
        type = "recipe",
        name = "air-filter-charge-mk4",
        category = "filters",
		enabled = true,
		hidden = true,
        energy_required = 256,
        ingredients = {{"air-filter-charge-x4", 1}},
        result = "empty-filter",
		result_count = "30"
	},

	{
        type = "recipe",
        name = "air-filter-charge-mk5",
        category = "filters",
		enabled = true,
		hidden = true,
        energy_required = 10240,
        ingredients = {{"air-filter-charge-x5", 1}},
        result = "empty-filter",
		result_count = "30"
    },
	
	{
		type="recipe",
		name="leaded-glass",
		enabled="false",
		ingredients =
		{
			 {"glass", 5},
			 {"lead-plate", 1},
		},
		result="leaded-glass",
		result_count = 5
    },

    {
		type="recipe",
		name="sniper-round",
		enabled="false",
		ingredients =
		{
			 {"processing-unit", 50},
			 {"steel-plate", 1000},
			 {"copper-plate", 1000},
			 {"explosives", 500},
		},
		result="sniper-round"
    },
	
    {
		type="recipe",
		name="stone-path-red",
		energy_required = 0.01,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 1},
		},
		result="stone-path-red",
    },
	
	{
		type="recipe",
		name="stone-path-yellow",
		energy_required = 0.01,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 1},
		},
		result="stone-path-yellow",
    },
	
	{
		type="recipe",
		name="stone-path-blue",
		energy_required = 0.01,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 1},
		},
		result="stone-path-blue",
    },
	
	{
		type="recipe",
		name="stone-path-green",
		energy_required = 0.01,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 1},
		},
		result="stone-path-green",
    },
	
	{
		type="recipe",
		name="stone-path-purple",
		energy_required = 0.01,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 1},
		},
		result="stone-path-purple",
    },
	
	{
		type="recipe",
		name="stone-path-black",
		energy_required = 0.01,
		enabled="true",
		ingredients =
		{
			 {"stone-brick", 1},
		},
		result="stone-path-black",
    },

	{
		type="recipe",
		name="sniper-rifle-mk2",
		enabled="false",
		ingredients =
		{
			 {"sniper-rifle", 5},
			 {"speed-module-5", 1},
        },
		result="sniper-rifle-mk2"
    },

	{
		type="recipe",
		name="sniper-round-mk2",
		enabled="false",
		ingredients =
		{
			 {"processing-unit", 50},
			 {"steel-plate", 1000},
			 {"copper-plate", 1000},
			 {"explosives", 1500},
		},
		result="sniper-round-mk2"
    },

	{
		type="recipe",
		name="sniper-rifle",
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 500},
			 {"iron-plate", 500},
			 {"copper-plate", 500},
			 {"effectivity-module-4", 1},
		},
		result="sniper-rifle"
    },


	{
		type="recipe",
		name="explosive-rocket-mk3",
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 500},
			 {"uranium-fuel-cell", 50},
			 {"iron-plate", 5000},
			 {"explosives", 500},
		},
		result="explosive-rocket-mk3"
    },

	{
		type="recipe",
		name="rocket-launcher-mk3",
		enabled="false",
		ingredients =
		{
			 {"processing-unit", 500},
			 {"electronic-circuit", 5000},
			 {"copper-plate", 5000},
			 {"advanced-circuit", 1000},
			 {"steel-plate", 1000},
		},
		result="rocket-launcher-mk3"
    },

    {
		type="recipe",
		name="minigun-bullet",
		enabled="false",
		ingredients =
		{
			 {"iron-plate", 1000},
			 {"steel-plate", 1000},
		},
		result="minigun-bullet"
    },

    {
		type="recipe",
		name="minigun-bullet-mk2",
		enabled="false",
		ingredients =
		{
             {"explosives", 10},
			 {"iron-plate", 20},
			 {"steel-plate", 20},
		},
		result="minigun-bullet-mk2"
    },

    {
		type="recipe",
		name="minigun-bullet-mk3",
		enabled="false",
		ingredients =
		{
             {"explosives", 20},
			 {"iron-plate", 20},
			 {"steel-plate", 20},
		},
		result="minigun-bullet-mk3"
    },

    {
		type="recipe",
		name="combat-shotgun-mk2",
		enabled="false",
		ingredients =
		{
             {"processing-unit", 200},
			 {"iron-plate", 2000},
			 {"steel-plate", 2000},
		},
		result="combat-shotgun-mk2"
    },

    {
		type="recipe",
		name="combat-shotgun-mk3",
		enabled="false",
		ingredients =
		{
             {"computer", 10},
			 {"iron-plate", 3000},
			 {"steel-plate", 3000},
		},
		result="combat-shotgun-mk3"
    },

    {
		type="recipe",
		name="shotgun-shells-mk2",
		enabled="false",
		ingredients =
		{
             {"explosives", 800},
			 {"iron-plate", 200},
			 {"steel-plate", 200},
		},
		result="shotgun-shells-mk2"
    },

    {
		type="recipe",
		name="shotgun-shells-mk3",
		enabled="false",
		ingredients =
		{
             {"explosives", 900},
			 {"iron-plate", 200},
			 {"steel-plate", 200},
		},
		result="shotgun-shells-mk3"
    },

    {
		type="recipe",
		name="roboport-mk4",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 20},
	         {"world-array", 1},
			 {"copper-plate", 2000},
			 {"iron-plate", 2000},
			 {"gold-plate", 1000},
		},
		result="roboport-mk4"
    },

		{
		type="recipe",
		name="logistic-robot-mk3",
		enabled="false",
		ingredients =
		{
			 {"battery-mk2-equipment", 1},
		     {"brain", 5},
			 {"speed-module-3", 1},
			 {"quantum-blood", 3},
			 {"copper-cable", 200},

		},
		result="logistic-robot-mk3"
    },

		{
		type="recipe",
		name="construction-robot-mk3",
		enabled="false",
		ingredients =
		{
			{"battery-mk2-equipment", 1},
			{"brain", 5},
			{"speed-module-3", 1},
			{"quantum-blood", 3},
			{"copper-cable", 200},
		},
		result="construction-robot-mk3"
    },

	{
		type="recipe",
		name="battery-mk4",
		enabled="false",
		ingredients =
		{
			 {"battery-mk3", 10},
	         {"iron-plate", 20},
			 {"copper-plate", 20},
			 {"gold-plate", 500},
		},
		result="battery-mk4"
    },

    {
		type="recipe",
		name="oil-refinery-mk2",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
             {"steel-plate", 150},
             {"iron-gear-wheel", 200},
             {"stone-brick", 50},
             {"electronic-circuit", 100},
             {"pipe", 50}
		},
		result="oil-refinery-mk2"
    },

	{
		type="recipe",
		name="pumpjack-mk2",
		energy_required = 25,
		enabled="false",
		ingredients =
		{
		     {"pumpjack", 1},
		     {"steel-plate", 150},
             {"iron-gear-wheel", 200},
             {"electronic-circuit", 50},
             {"pipe", 50},
		},
		result="pumpjack-mk2"
    },

    {
    type = "recipe",
    name = "energy-shield-mk3-equipment",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"computer", 2},
	  {"effectivity-module-4", 1},
      {"steel-plate", 150},
	  {"gold-plate", 50},
    },
    result = "energy-shield-mk3-equipment"
  },

   {
    type = "recipe",
    name = "energy-shield-mk4-equipment",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"advanced-circuit", 60},
	  {"speed-module-4", 1},
      {"steel-plate", 100},
	  {"gold-plate", 150},
    },
    result = "energy-shield-mk4-equipment"
  },

 {
    type = "recipe",
    name = "vehicle-shield",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"computer", 15},
	  {"effectivity-module-5", 1},
      {"steel-plate", 350},
	  {"gold-plate", 500},
    },
    result = "vehicle-shield"
  },

   {
    type = "recipe",
    name = "ship-cannon",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"computer", 5},
	  {"effectivity-module-5", 1},
      {"steel-plate", 500},
	  {"gold-plate", 500},
    },
    result = "ship-cannon"
  },

	{
		type="recipe",
		name="advanced-chemical-plant",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
             {"steel-plate", 15},
             {"iron-gear-wheel", 15},
             {"electronic-circuit", 15},
             {"pipe", 15},
			 {"processing-unit", 15},
		},
		result="advanced-chemical-plant"
    },
	
	{
		type="recipe",
		name="logistic-robot-mk2",
		enabled="false",
		ingredients =
		{
			 {"logistic-robot", 1},
			 {"electric-engine-unit", 1},
			 {"battery", 10},
			 {"gold-plate", 5},
		},
		result="logistic-robot-mk2"
    },

	{
		type="recipe",
		name="construction-robot-mk2",
		enabled="false",
		ingredients =
		{
			 {"construction-robot", 1},
			 {"electric-engine-unit", 1},
			 {"battery", 10},
			 {"gold-plate", 5},
		},
		result="construction-robot-mk2"
    },

	{
		type="recipe",
		name="personal-roboport-equipment-mk2",
		enabled="false",
		ingredients =
		{
			 {"personal-roboport-equipment", 4},
			 {"computer", 1},
		},
		result="personal-roboport-equipment-mk2"
    },

    {
		type="recipe",
		name="large-personal-roboport-equipment",
		enabled="false",
		ingredients =
		{
			 {"personal-roboport-equipment", 6},
			 {"battery", 50},
			 {"solar-panel-equipment", 5},
			 {"computer", 3},
		},
		result="large-personal-roboport-equipment"
    },

	{
		type="recipe",
		name="advanced-exoskeleton-equipment",
		enabled="false",
		ingredients =
		{
			 {"exoskeleton-equipment", 2},
			 {"speed-module-3", 1},
			 {"gold-plate", 25},
			 {"computer", 1},
		},
		result="advanced-exoskeleton-equipment"
    },

	{
		type="recipe",
		name="dark-matter-reactor-mk2",
		category="chemistry",
		energy_required = 50,
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="antithetical-matter", amount=500},
			 {"dark-matter-reactor", 1},
			 {"computer", 1},
			 {"energy-liquid", 10},
		},
		result="dark-matter-reactor-mk2"
    },


	{
		type="recipe",
		name="substation-mk2",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 20},
	         {"advanced-circuit", 10},
             {"copper-plate", 10},
			 {"gold-plate", 25},
		},
		result="substation-mk2"
    },

	{
		type="recipe",
		name="tesla-coil",
		energy_required = 15,
		enabled="false",
		ingredients =
		{
             {"steel-plate", 150},
             {"laser-core", 100},
			 {"gold-plate", 500},
			 {"radar", 10},
		},
		result="tesla-coil"
    },

	{
		type="recipe",
		name="terra-coil",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
		     {"world-array", 1},
             {"steel-plate", 150},
             {"computer", 20},
			 {"gold-plate", 500},
			 {"radar", 50},
		},
		result="terra-coil"
    },

	{
		type="recipe",
		name="solar-panel-mk3",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"advanced-photovoltaic-cells", 100},
			 {"fuse-box", 5},
		},
		result="solar-panel-mk3"
	},

    {
		type="recipe",
		name="roboport-mk2",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"roboport", 2},
		},
		result="roboport-mk2"
	},

   {
		type="recipe",
		name="roboport-charger",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 200},
			 {"iron-plate", 200},
			 {"copper-cable", 300},
			 {"substation", 1},
			 {"roboport", 1},
		},
		result="roboport-charger"
	},

	{
		type="recipe",
		name="power-armor-mk3",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"power-armor-mk2", 1},
			 {"lead-plate", 500},
			 {"steel-chest", 20},
			 {"speed-module-6", 2},
			 {"productivity-module-6", 2},
			 
		},
		result="power-armor-mk3"
	},
	
		{
		type="recipe",
		name="power-armor-mk4",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"power-armor-mk3", 1},
			 {"chitin", 500},
			 
		},
		result="power-armor-mk4"
	},

	{
		type="recipe",
		name="quantum-fuel",
		category="chemistry",
		energy_required = 200,
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="quantum-waste", amount=500},
			 {"steel-plate", 5},
			 
		},
		result="quantum-fuel"
	},

	{
		type="recipe",
		name="quantum-blood",
		category="chemistry",
		energy_required = 200,
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="blood", amount=500},
			 {"quantum-fuel", 1},
			 
		},
		result="quantum-blood"
	},

	{
		type="recipe",
		name="dark-matter-reactor",
		category="chemistry",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
             {type="fluid", name="dark-matter", amount=500},
			 {"gold-plate", 50},
		},
		result="dark-matter-reactor"
	},

	{
		type="recipe",
		name="quantum-particle",
		category="chemistry",
		energy_required = 40,
		enabled="false",
		ingredients =
		{
             {type="fluid", name="dark-matter", amount=50},
			 {"gold-ore", 15},
			 {"iron-ore", 15},
			 {"copper-ore", 15},
		},
		result="quantum-particle",
		result_count= 5,
	},

	{
		type="recipe",
		name="roboport-mk3",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {"roboport-mk2", 2},
		},
		result="roboport-mk3"
	},

	{
		type="recipe",
		name="advanced-accumulator",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
			 {"accumulator", 4},
			 {"gold-plate", 5},
		},
		result="advanced-accumulator"
	},

	{
		type="recipe",
		name="module-componant",
		energy_required = 3,
		enabled="false",
		ingredients =
		{
	         {"micro-processor", 1},
			 {"gold-plate", 10},
		},
		result="module-componant",
		result_count= 2,
	},
	
	{
		type="recipe",
		name="micro-processor",
		energy_required = 10,
		enabled="false",
		ingredients =
		{
	         {"electronic-circuit", 1},
			 {"advanced-circuit", 1},
			 {"gold-plate", 10},
		},
		result="micro-processor"
	},
	
	{
		type="recipe",
		name="productivity-module-4",
		enabled="false",
		energy_required = 65,
		ingredients =
		{
			 {"productivity-module-3", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="productivity-module-4"
	},

	{
		type="recipe",
		name="productivity-module-5",
		enabled="false",
		energy_required = 70,
		ingredients =
		{
			 {"productivity-module-4", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="productivity-module-5"
	},

	{
		type="recipe",
		name="productivity-module-6",
		enabled="false",
		energy_required = 75,
		ingredients =
		{
			 {"productivity-module-5", 1},
             {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="productivity-module-6"
	},

	{
		type="recipe",
		name="productivity-module-7",
		enabled="false",
		energy_required = 80,
		ingredients =
		{
			 {"productivity-module-6", 1},
			 {"module-componant", 60},
			 {"micro-processor", 10},
		},
		result="productivity-module-7"
	},

	{
		type="recipe",
		name="productivity-module-8",
		enabled="false",
		energy_required = 85,
		ingredients =
		{
			 {"productivity-module-7", 1},
			 {"module-componant", 60},
			 {"micro-processor", 10},
		},
		result="productivity-module-8"
	},

	{
		type="recipe",
		name="productivity-module-9",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-8", 1},
			 {"module-componant", 60},
			 {"micro-processor", 10},
		},
		result="productivity-module-9"
	},

	{
		type="recipe",
		name="productivity-module-10",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-9", 1},
			 {"module-componant", 90},
			 {"micro-processor", 10},
		},
		result="productivity-module-10"
	},

	{
		type="recipe",
		name="productivity-module-11",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-10", 1},
			 {"module-componant", 90},
			 {"micro-processor", 15},
		},
		result="productivity-module-11"
	},

	{
		type="recipe",
		name="productivity-module-12",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-11", 1},
			 {"module-componant", 90},
			 {"micro-processor", 15},
		},
		result="productivity-module-12"
	},

	{
		type="recipe",
		name="productivity-module-13",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-12", 1},
			 {"module-componant", 120},
			 {"micro-processor", 15},
		},
		result="productivity-module-13"
	},

	{
		type="recipe",
		name="productivity-module-14",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-13", 1},
	         {"module-componant", 120},
			 {"micro-processor", 20},
		},
		result="productivity-module-14"
	},

	{
		type="recipe",
		name="productivity-module-15",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-14", 1},
	         {"module-componant", 120},
			 {"micro-processor", 20},
		},
		result="productivity-module-15"
	},

	{
		type="recipe",
		name="productivity-module-16",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-15", 1},
	         {"module-componant", 120},
			 {"micro-processor", 20},
		},
		result="productivity-module-16"
	},

	{
		type="recipe",
		name="productivity-module-17",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-16", 1},
	         {"module-componant", 150},
			 {"micro-processor", 25},
		},
		result="productivity-module-17"
	},

	{
		type="recipe",
		name="productivity-module-18",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-17", 1},
	         {"module-componant", 150},
			 {"micro-processor", 25},
		},
		result="productivity-module-18"
	},

	{
		type="recipe",
		name="productivity-module-19",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-18", 1},
	         {"module-componant", 150},
			 {"micro-processor", 25},
		},
		result="productivity-module-19"
	},

	{
		type="recipe",
		name="productivity-module-20",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-19", 1},
	         {"module-componant", 180},
			 {"micro-processor", 30},
		},
		result="productivity-module-20"
	},

	{
		type="recipe",
		name="productivity-module-21",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-20", 2},
	         {"module-componant", 180},
			 {"micro-processor", 30},
		},
		result="productivity-module-21"
	},

	{
		type="recipe",
		name="productivity-module-22",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-21", 2},
	         {"module-componant", 180},
			 {"micro-processor", 30},
		},
		result="productivity-module-22"
	},

    {
		type="recipe",
		name="productivity-module-23",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-22", 2},
	         {"module-componant", 210},
			 {"micro-processor", 35},
		},
		result="productivity-module-23"
	},

    {
		type="recipe",
		name="productivity-module-24",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-23", 2},
	         {"module-componant", 210},
			 {"micro-processor", 35},
		},
		result="productivity-module-24"
	},

	{
		type="recipe",
		name="productivity-module-25",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"productivity-module-24", 2},
	         {"module-componant", 210},
			 {"micro-processor", 35},
		},
		result="productivity-module-25"
	},

	{
		type="recipe",
		name="speed-module-4",
		enabled="false",
		energy_required = 65,
		ingredients =
		{
			 {"speed-module-3", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-4"
	},

	{
		type="recipe",
		name="speed-module-5",
		enabled="false",
		energy_required = 70,
		ingredients =
		{
			 {"speed-module-4", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-5"
	},

	{
		type="recipe",
		name="speed-module-6",
		enabled="false",
		energy_required = 75,
		ingredients =
		{
			 {"speed-module-5", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-6"
	},

	{
		type="recipe",
		name="speed-module-7",
		enabled="false",
		energy_required = 80,
		ingredients =
		{
			 {"speed-module-6", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-7"
	},

	{
		type="recipe",
		name="speed-module-8",
		enabled="false",
		energy_required = 85,
		ingredients =
		{
			 {"speed-module-7", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-8"
	},

	{
		type="recipe",
		name="speed-module-9",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-8", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-9"
	},

	{
		type="recipe",
		name="speed-module-10",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-9", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-10"
	},

	{
		type="recipe",
		name="speed-module-11",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-10", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-11"
	},

	{
		type="recipe",
		name="speed-module-12",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-11", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-12"
	},

	{
		type="recipe",
		name="speed-module-13",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-12", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-13"
	},

	{
		type="recipe",
		name="speed-module-14",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-13", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-14"
	},

	{
		type="recipe",
		name="speed-module-15",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-14", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-15"
	},

	{
		type="recipe",
		name="speed-module-16",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-15", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-16"
	},

	{
		type="recipe",
		name="speed-module-17",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-16", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-17"
	},

	{
		type="recipe",
		name="speed-module-18",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-17", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-18"
	},

	{
		type="recipe",
		name="speed-module-19",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-18", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-19"
	},

	{
		type="recipe",
		name="speed-module-20",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-19", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-20"
	},

	{
		type="recipe",
		name="speed-module-21",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-20", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-21"
	},

	{
		type="recipe",
		name="speed-module-22",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-21", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-22"
	},

	{
		type="recipe",
		name="speed-module-23",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-22", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-23"
	},

	{
		type="recipe",
		name="speed-module-24",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-23", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-24"
	},

	{
		type="recipe",
		name="speed-module-25",
		enabled="false",
		energy_required = 90,
		ingredients =
		{
			 {"speed-module-24", 1},
	         {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="speed-module-25"
	},

	{
		type="recipe",
		name="effectivity-module-4",
		enabled="false",
		energy_required = 65,
		ingredients =
		{
			 {"effectivity-module-3", 1},
             {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="effectivity-module-4"
	},

		{
		type="recipe",
		name="effectivity-module-5",
		enabled="false",
		energy_required = 70,
		ingredients =
		{
			 {"effectivity-module-4", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="effectivity-module-5"
	},

	{
		type="recipe",
		name="effectivity-module-6",
		enabled="false",
		energy_required = 75,
		ingredients =
		{
			 {"effectivity-module-5", 1},
			 {"module-componant", 30},
			 {"micro-processor", 5},
		},
		result="effectivity-module-6"
	},

	{
		type="recipe",
		name="ultra-beacon",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 2000},
	         {"iron-plate", 1500},
             {"plastic-bar", 1200},
			 {"computer", 1},
			 {"battery", 50},
			 {"gold-plate", 1800},
		},
		result="ultra-beacon"
	},

	{
		type="recipe",
		name="power-boost-beacon",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 2000},
	         {"iron-plate", 1500},
             {"plastic-bar", 1200},
			 {"computer", 3},
			 {"productivity-module-6", 1},
			 {"gold-plate", 650},
		},
		result="power-boost-beacon"
	},

    {
		type="recipe",
		name="basic-beacon-mk2",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"electronic-circuit", 100},
	         {"advanced-circuit", 100},
             {"plastic-bar", 1200},
             {"steel-plate", 10},
			 {"copper-cable", 10},
			 {"processing-unit", 5},
		},
		result="basic-beacon-mk2"
	},

	{
		type="recipe",
		name="world-array",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"steel-plate", 2000},
			 {"module-componant", 100},
             {"plastic-bar", 1200},
			 {"productivity-module-16", 4},
			 {"battery", 500},
			 {"gold-plate", 2500},
		},
		result="world-array"
	},

	{
		type="recipe",
		name="solar-panel-mk5",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			{"advanced-photovoltaic-cells", 1600},
			{"gold-plate", 2000},
			{"fuse-box", 30},

		},
		result="solar-panel-mk5"
	},
	
    {
		type="recipe",
		name="solar-panel-mk6",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			{"advanced-photovoltaic-cells", 6400},
			{"gold-plate", 1000},
			{"fuse-box", 80},

		},
		result="solar-panel-mk6"
	},
	
    {
		type="recipe",
		name="solar-panel-mk7",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			{"advanced-photovoltaic-cells", 25000},
			{"gold-plate", 30000},
			{"fuse-box", 160},

		},
		result="solar-panel-mk7"
	},
	
	{
		type="recipe",
		name="advanced-photovoltaic-cells",
		energy_required = 5,
		enabled="false",
		ingredients =
		{
			 {"micro-cells", 14},
		},
		result="advanced-photovoltaic-cells"
	},

	{
		type="recipe",
		name="advanced-photovoltaic-cells2",
		enabled="false",
		ingredients =
		{
			 {"micro-cells", 7},
			 {"energy-liquid", 1},
		},
		result="advanced-photovoltaic-cells",
		result_count = 2,
	},
	
	{
		type="recipe",
		name="micro-cells",
		energy_required = 5,
		enabled="false",
		ingredients =
		{
			 {"solar-waffer", 2},
             {"glass", 2},
		},
		result="micro-cells"
	},

	{
		type="recipe",
		name="micro-cells2",
		category = "chemistry",
		energy_required = 20,
		enabled="false",
		ingredients =
		{
			 {type="fluid", name="dark-matter", amount=30},
			 {"glass", 2},
			 {"solar-waffer", 1},
		},
		result="micro-cells",
		result_count = 10,
	},
	
	{
		type="recipe",
		name="solar-waffer",
		energy_required = 5,
		enabled="false",
		ingredients =
		{
			 {"silicon", 1},
	         {"seed-crystal", 1},
		},
		result="solar-waffer"
	},

	{
		type="recipe",
		name="solar-panel-mk4",
		energy_required = 30,
		enabled="false",
		ingredients =
		{
			 {"advanced-photovoltaic-cells", 400},
			 {"fuse-box", 10},

		},
		result="solar-panel-mk4"
	},

	{
    type = "recipe",
    name = "logistic-chest-requester-4d",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"advanced-circuit", 60},
	  {"processing-unit", 60},
      {"dark-matter-reactor-mk2", 1}
    },
    result = "logistic-chest-requester-4d"
  },

  {
    type = "recipe",
    name = "logistic-chest-storage-4d",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"advanced-circuit", 60},
	  {"processing-unit", 60},
      {"dark-matter-reactor-mk2", 1}
    },
    result = "logistic-chest-storage-4d"
  },

  {
    type = "recipe",
    name = "logistic-chest-active-provider-4d",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"advanced-circuit", 60},
	  {"processing-unit", 60},
      {"dark-matter-reactor-mk2", 1}
    },
    result = "logistic-chest-active-provider-4d"
  },

  {
    type = "recipe",
    name = "logistic-chest-passive-provider-4d",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"advanced-circuit", 60},
	  {"processing-unit", 60},
      {"dark-matter-reactor-mk2", 1}
    },
    result = "logistic-chest-passive-provider-4d"
  },

  {
    type = "recipe",
    name = "logistic-chest-buffer-4d",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"advanced-circuit", 60},
	  {"processing-unit", 60},
      {"dark-matter-reactor-mk2", 1}
    },
    result = "logistic-chest-buffer-4d"
  },
  --
  {
    type = "recipe",
    name = "logistic-house-requester",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"logistic-chest-requester",1},
	  {"iron-plate",20},
	  {"advanced-circuit", 15},
    },
    result = "logistic-house-requester"
  },

  {
    type = "recipe",
    name = "logistic-house-storage",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
			{"logistic-chest-storage",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
			{"steel-chest",15},
    },
    result = "logistic-house-storage"
  },

  {
    type = "recipe",
    name = "logistic-house-active-provider",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
			{"logistic-chest-active-provider",1},
			{"iron-plate",20},
			{"advanced-circuit", 15},
    },
    result = "logistic-house-active-provider"
  },

  {
    type = "recipe",
    name = "logistic-house-passive-provider",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
			{"logistic-chest-passive-provider",1},
			{"iron-plate",20},
			{"advanced-circuit", 15},
    },
    result = "logistic-house-passive-provider"
  },

  {
    type = "recipe",
    name = "logistic-house-buffer",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
			{"logistic-chest-buffer",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
			{"steel-chest",15},
    },
    result = "logistic-house-buffer"
  },
  
  {
    type = "recipe",
    name = "storage-house",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"steel-plate", 120},
	  {"wooden-chest", 60},
      {"iron-plate", 200},
	  {"stone-brick",65}
    },
    result = "storage-house"
  },

  {
    type = "recipe",
    name = "furnace-house",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"storage-house", 1},
	  {"electric-furnace", 20},
    },
    result = "furnace-house"
  },

  {
    type = "recipe",
    name = "glass-tile",
    enabled = true,
    energy_required = 10,
    ingredients =
    {
      {"leaded-glass", 20},
    },
    result = "glass-tile",
	result_count = 10,
  },
  
  --------Lights
    {
		type="recipe",
		name="red-lamp",
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 5},
			 {"copper-cable", 5},
			 {"glass", 1},
		},
		result="red-lamp"
    },
	{
		type="recipe",
		name="blue-lamp",
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 5},
			 {"copper-cable", 5},
			 {"glass", 1},
		},
		result="blue-lamp"
    },
	{
		type="recipe",
		name="yellow-lamp",
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 5},
			 {"copper-cable", 5},
			 {"glass", 1},
		},
		result="yellow-lamp"
    },
	{
		type="recipe",
		name="green-lamp",
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 5},
			 {"copper-cable", 5},
			 {"glass", 1},
		},
		result="green-lamp"
    },
	{
		type="recipe",
		name="purple-lamp",
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 5},
			 {"copper-cable", 5},
			 {"glass", 1},
		},
		result="purple-lamp"
    },
	{
		type="recipe",
		name="white-lamp",
		enabled="true",
		ingredients =
		{
	         {"iron-plate", 5},
			 {"copper-cable", 5},
			 {"glass", 1},
		},
		result="white-lamp"
    },
	----fluids
	{
    type = "recipe",
    name = "dark-matter",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="quadricyclane", amount=30},
	  {type="fluid", name="acetylene", amount=30},
	  {type="item", name="sulfur", amount=30},
    },
    results=
    {
      {type="fluid", name="dark-matter", amount=30}
    },
    main_product= "",
    icon = "__Darkstar_utilities__/graphics/icons/dark-matter.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  
	{
    type = "recipe",
    name = "quadricyclane",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="norbornadiene", amount=30},
    },
    results=
    {
      {type="fluid", name="quadricyclane", amount=30}
    },
    main_product= "",
    icon = "__Darkstar_utilities__/graphics/icons/quadricyclane-cracking.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  
  {
    type = "recipe",
    name = "norbornadiene",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="cyclopentadiene", amount=20},
      {type="fluid", name="acetylene", amount=20}
    },
    results=
    {
      {type="fluid", name="norbornadiene", amount=40}
    },
    main_product= "",
    icon = "__Darkstar_utilities__/graphics/icons/norbornadiene-cracking.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  
  {
    type = "recipe",
    name = "acetylene",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=30},
    },
    results=
    {
      {type="fluid", name="acetylene", amount=30}
    },
    main_product= "",
    icon = "__Darkstar_utilities__/graphics/icons/acetylene-cracking.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  
  {
    type = "recipe",
    name = "petroleum-naphtha",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=40},
    },
    results=
    {
      {type="fluid", name="cyclopentadiene", amount=30}
    },
    main_product= "",
    icon = "__Darkstar_utilities__/graphics/icons/naptha.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  {
    type = "recipe",
    name = "antithetical-matter",
    category = "chemistry",
    enabled = false,
    energy_required = 200,
    ingredients =
    {
      {type="fluid", name="dark-matter", amount=30},
	  {name="quantum-particle", amount=10},
    },
    results=
    {
      {type="fluid", name="antithetical-matter", amount=60},
	  {type="fluid", name="quantum-waste", amount=120}
    },
    main_product= "antithetical-matter",
    icon = "__Darkstar_utilities__/graphics/icons/antithetical-matter.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  {
    type = "recipe",
    name = "blood",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="water", amount=30},
	  {name="iron-ore", amount=10},
    },
    results=
    {
      {type="fluid", name="blood", amount=30}
    },
    main_product= "",
    icon = "__Darkstar_utilities__/graphics/icons/quadricyclane.png",
	icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
}
)
