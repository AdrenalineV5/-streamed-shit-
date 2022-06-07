Config = {}
-----------PED-------------
Config.Invincible = true -- Is the ped going to be invincible?
Config.Frozen = true -- Is the ped frozen in place?
Config.Stoic = true -- Will the ped react to events around them?
Config.FadeIn = true -- Will the ped fade in and out based on the distance. (Looks a lot better.)
Config.DistanceSpawn = 125.0 -- Distance before spawning/despawning the ped. (GTA Units.)

Config.MinusOne = true -- Leave this enabled if your coordinates grabber does not -1 from the player coords.

Config.GenderNumbers = { -- No reason to touch these.
	['male'] = 4,
	['female'] = 5
}

Config.GymPeds = {
	{
		model = `ig_amandatownley`,-- Cascade badge
		coords = vector4(-1845.116, -1196.094, 19.184823, 154.34831),
		gender = 'female',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `ig_lifeinvad_01`,-- Boulder Badge
		coords = vector4(282.18154, 6789.121, 15.695003, 238.57931),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `ig_ramp_hipster`,-- Thunder Badge
		coords = vector4(2728.4985, 1579.2822, 24.500949, 63.253177),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `ig_avery`,-- Rainbow Badge
		coords = vector4(-468.3836, 1129.1408, 325.85552, 265.80065),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `u_m_y_babyd`,-- Soul Badge
		coords = vector4(-758.8973, -1046.982, 13.504891, 286.5726),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `u_m_y_dancelthr_01`,-- Marsh Badge
		coords = vector4(387.28359, 3584.9541, 33.292228, 337.31134),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `u_m_m_filmdirector`,-- Volcano Badge
		coords = vector4(2944.0041, 2747.0451, 43.347053, 284.95468),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `u_m_m_streetart_01`,-- Earth Badge
		coords = vector4(-2301.944, 365.4432, 174.60157, 4.9535837),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `u_m_m_streetart_01`,-- Earth Badge
		coords = vector4(-2301.944, 365.4432, 174.60157, 4.9535837),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `a_f_y_epsilon_01`,-- Trophy Badge
		coords = vector4(200.50013, -873.09, 31.494144, 4.9599523),
		gender = 'female',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
	{
		model = `a_m_m_genfat_01`,-- Card Seller
		coords = vector4(-1674.614, -1062.889, 13.154162, 55.284446),
		gender = 'male',
		scenario = 'PROP_HUMAN_STAND_IMPATIENT'
	},
}

---------------------blips--------------------------------

Config.Blip = {
	{
        label = "Boulder Badge",
        location = vector3(282.24, 6789.04, 15.7),
    },
	{
        label = "Cascade Badge",
        location = vector3(-1844.97, -1195.94, 19.20),
    },
	{
        label = "Thunder Badge",
        location = vector3(2729.21, 1577.74, 66.54),
    },
	{
        label = "Rainbow Badge",
        location = vector3(-468.3836, 1129.1408, 325.85552),
    },
	{
        label = "Soul Badge",
        location = vector3(-758.68, -1046.87, 13.6),
    },
	{
        label = "Marsh Badge",
        location = vector3(387.26, 3585.02, 33.29),
    },
	{
        label = "Volcano Badge",
        location = vector3(2944.06, 2747.0, 43.5),
    },
	{
        label = "Earth Badge",
        location = vector3(-2301.944, 365.4432, 174.60157),
    },
	{
        label = "League Trophy",
        location = vector3(200.5, -873.09, 30.91),
    },
}

Config.CardshopLocation =  {
	["Cardshop"] = {
		location = vector3(-1674.614, -1062.889, 13.154162),
		label = "Del Perro Cards4Cash",
	},
}

------------card prices-------------------

Config.CardshopItems = {
	["boulderbadge"] = 5000,
	["cascadebadge"] = 5000,
	["thunderbadge"] = 5000,
	["rainbowbadge"] = 5000,
	["soulbadge"] = 5000,
	["marshbadge"] = 5000,
	["volcanobadge"] = 5000,
	["earthbadge"] = 5000,
	["trophybadge"] = 15000,
	["abra"] = 25, 
	["aerodactyl"] = 100, 					
	["alakazam"] = 25, 					
	["arbok"] = 25, 						
	["arcanine"] = 25, 					
	["articuno"] = 100, 					
	["beedrill"] = 25, 					
	["bellsprout"] = 25, 					
	["blastoise"] = 100, 				
	["butterfree"] = 25, 				
	["caterpie"] = 25, 				   
	["chansey"] = 25, 				 
	["charizard"] = 100, 				 
	["charmander"] = 25, 				 	
	["charmeleon"] = 25, 				 	
	["clefable"] = 25, 					
	["clefairy"] = 25, 				 	
	["cloyster"] = 25, 				 
	["cubone"] = 25, 						
	["dewgong"] = 25, 				 
	["diglett"] = 25, 					
	["ditto"] = 50, 						
	["dodrio"] = 25, 						
	["doduo"] = 25, 		
	["dragonair"] = 100, 				
	["dragonite"] = 100, 					
	["dratini"] = 100, 					
	["drowzee"] = 25, 					 
	["dugtrio"] = 25, 				  
	["eevee"] = 50, 						
	["ekans"] = 25, 			
	["electabuzz"] = 25, 				   
	["electrode"] = 25, 					
	["exeggcute"] = 25, 					 
	["exeggutor"] = 25, 				 
	["farfetchd"] = 25, 					 
	["fearow"] = 25, 					
	["flareon"] = 25, 					
	["gastly"] = 25, 						
	["gengar"] = 25, 						
	["geodude"] = 25, 				 	
	["gloom"] = 25, 		
	["golbat"] = 25, 						 
	["goldeen"] = 25, 
	["golduck"] = 25, 		 			
	["golem"] = 25, 		 			
	["graveler"] = 25, 		
	["grimer"] = 25, 		 			
	["growlithe"] = 25, 		 	
	["gyarados"] = 50, 			
	["haunter"] = 25, 			
	["hitmonchan"] = 50, 		
	["hitmonlee"] = 50, 				 
	["horsea"] = 25, 					
	["hypno"] = 25, 				 	
	["ivysaur"] = 25, 					
	["jigglypuff"] = 50, 				
	["jolteon"] = 25, 				
	["jynx"] = 50, 					
	["kabuto"] = 100, 					
	["kabutops"] = 100, 
	["kadabra"] = 50,
	["kaknua"] = 25, 			 	 		 
	["kangaskhan"] = 50, 			 	 	
	["kingler"] = 25, 			 	 	
	["koffing"] = 25, 			 	 	
	["krabby"] = 25, 				 	 	
	["lapras"] = 50, 			 			
	["lickitung"] = 25, 			 		
	["machamp"] = 50, 				
	["machoke"] = 25, 					 
	["machop"] = 25, 			 		
	["magikarp"] = 25, 			 		
	["magmar"] = 25, 					  
	["magnemite"] = 25, 			   	
	["magneton"] = 25, 				
	["mankey"] = 25, 						
	["marowak"] = 25, 					
	["meowth"] = 25, 					
	["metapod"] = 25, 				 
	["mew"] = 100, 						
	["mewtwo"] = 100, 						 
	["moltres"] = 100, 					
	["mr_mime"] = 25, 					
	["muk"] = 25, 	
	["nidoking"] = 50, 				  
	["nidoqueen"] = 25, 				 	
	["nidoran"] = 25, 				 	
	["nidorian"] = 25, 				  
	["nidorina"] = 25, 				 	
	["nidorino"] = 25, 				 	
	["ninetails"] = 25, 					
	["oddish"] = 25, 				 		
	["omanyte"] = 100, 				 	
	["omastar"] = 100, 					
	["onix"] = 50, 				 	
	["paras"] = 25, 						 
	["parasect"] = 25, 					
	["persian"] = 25, 					
	["pidgeotto"] = 25, 					
	["pidgeot"] = 25, 					
	["pidgey"] = 25, 						
	["pikachu"] = 25, 					
	["pinsir"] = 25, 						 
	["poliwag"] = 25, 					
	["poliwhirl"] = 25, 				  
	["poliwrath"] = 25, 					
	["ponyta"] = 25, 						
	["porygon"] = 100, 					
	["primeape"] = 25, 				    
	["psyduck"] = 25, 				
	["raichu"] = 50,				
	["rapidash"] = 25, 					
	["raticate"] = 25, 				
	["rattata"] = 25, 					
	["rhydon"] = 25, 						
	["rhyhorn"] = 25, 					
	["sandshrew"] = 25, 				 	
	["sandslash"] = 25, 				
	["scyther"] = 50, 					
	["seadra"] = 25, 					
	["seaking"] = 25, 		 			
	["seel"] = 25, 		 	
	["shellder"] = 25, 		 			 
	["slowbro"] = 25, 		 			
	["slowpoke"] = 25, 		 			
	["snorlax"] = 100, 					
	["spearow"] = 25, 				 	
	["squirtle"] = 25, 				 	
	["starmie"] = 50, 				
	["staryu"] = 25, 				 		
	["tangela"] = 25, 				
	["tauros"] = 25, 						
	["tentacool"] = 25, 					
	["tentacruel"] = 25,				
	["togepi"] = 50,			 	
	["vaporeon"] = 50, 			 	 	
	["venomoth"] = 25, 			 	 	
	["venonat"] = 25, 			 	 	
	["venusaur"] = 50, 			 	 	 
	["victreebel"] = 25, 				 		
	["vileplume"] = 25,		 		
	["voltorb"] = 25, 				 
	["vulpix"] = 25, 				
	["wartortle"] = 25, 		 			 
	["weedle"] = 25, 				 	
	["weepinbell"] = 25, 				   
	["weezing"] = 25, 			   	
	["wigglytuff"] = 50, 			 		
	["zapdos"] = 100, 					 
	["zubat"] = 25, 				 
	["bulbasaur"] = 25, 			   		 
	["blastoisev"] = 200, 			 	 	
	["charizardv"] = 200, 				 	
	["mewv"] = 200, 		 				
	["pikachuv"] = 200, 		 		 
	["snorlaxv"] = 200, 					
	["venusaurv"] = 200, 				
	["blastoisevmax"] = 350, 		 	   
	["mewtwogx"] = 350, 				 	   
	["snorlaxvmax"] = 350, 				   
	["venusaurvmax"] = 350, 			   	  
	["vmaxcharizard"] = 350, 			   
	["vmaxpikachu"] = 350, 			   
	["rainbowmewtwogx"] = 500, 			
	["rainbowvmaxcharizard"] = 500, 		
	["rainbowvmaxpikachu"] = 500, 		
	["snorlaxvmaxrainbow"] = 500
}

--------------card-rarity---------------

Config.basicCards = {
    "abra",
    "alakazam",
    "arbok",
    "arcanine",
    "beedrill",
    "bellsprout",
    "butterfree",
    "caterpie",
    "chansey",
    "charmander",
    "charmeleon",
    "clefable",
    "clefairy",
    "cloyster",
    "cubone",
    "dewgong",
    "diglett",
    "dodrio",
    "doduo",
    "drowzee",
    "dugtrio",
    "ekans",
    "electabuzz",
    "electrode",
    "exeggcute",
    "exeggutor",
    "farfetchd",
    "fearow",
    "gastly",
    "gengar",
    "geodude",
    "gloom",
    "golbat",
    "goldeen",
    "golduck",
    "golem",
    "graveler",
    "grimer",
    "growlithe",
    "haunter",
    "horsea",
    "hypno",
    "ivysaur",
    "kakuna",
    "kingler",
    "koffing",
    "krabby",
    "lickitung",
    "machoke",
    "machop",
    "magikarp",
    "magmar",
    "magnemite",
    "magneton",
    "mankey",
    "marowak",
    "meowth",
    "metapod",
    "moltres",
    "mr_mime",
    "muk",
    "nidoqueen",
    "nidoran",
    "nidorian",
    "nidorina",
    "nidorino",
    "ninetails",
    "oddish",
    "paras",
    "parasect",
    "persian",
    "pidgeotto",
    "pidgeot",
    "pidgey",
    "pikachu",
    "pinsir",
    "poliwag",
    "poliwhirl",
    "poliwrath",
    "ponyta",
    "primeape",
    "psyduck",
    "rapidash",
    "raticate",
    "rattata",
    "rhydon",
    "rhyhorn",
    "sandshrew",
    "sandslash",
    "seadra",
    "seaking",
    "seel",
    "shellder",
    "slowbro",
    "slowpoke",
    "spearow",
    "squirtle",
    "staryu",
    "tangela",
    "tauros",
    "tentacool",
    "tentacruel",
    "venomoth",
    "venonat",
    "victreebel",
    "vileplume",
    "voltorb",
    "vulpix",
    "wartortle",
    "weedle",
    "weepinbell",
    "weezing",
    "zubat",
    "bulbasaur"
}

Config.rareCards = {
    "lapras",
    "eevee",
    "togepi",
    "vaporeon",
    "jolteon",
    "flareon",
    "jigglypuff",
    "wigglytuff",
    "kadabra",
    "raichu",
    "nidoking",
    "jynx",
    "kangaskhan",
    "gyarados",
    "ditto",
    "starmie",
    "onix",
    "machamp",
    "scyther",
    "hitmonlee",
    "hitmonchan",
    "venusaur"
}

Config.ultraCards = {
    "charizard",
    "blastoise",
    "porygon",
    "omanyte",
    "omastar",
    "dragonite",
    "mewtwo",
    "mew",
    "snorlax",
    "articuno",
    "zapdos",
    "kabuto",
    "kabutops",
    "aerodactyl",
    "moltres",
    "dratini",
    "dragonair"
}

Config.vCards = {
	"blastoisev",			 	 	
	"charizardv",				 	
	"mewv",	 				
	"pikachuv",		 		 
	"snorlaxv",					
	"venusaurv"
}

Config.vmaxCards = {
	"blastoisevmax", 	   
	"mewtwogx",		 	   
	"snorlaxvmax",				   
	"venusaurvmax",			   	  
	"vmaxcharizard",			   
	"vmaxpikachu"
}

Config.rainbowCards = {
    "rainbowmewtwogx",		
    "rainbowvmaxcharizard",	
    "rainbowvmaxpikachu",		
    "snorlaxvmaxrainbow"
}

-------------Item count for selling -------------------

Config.CardList = {
    ["boulderbadge"] = 1,
    ["cascadebadge"] = 1,
    ["thunderbadge"] = 1,
    ["rainbowbadge"] = 1,
    ["soulbadge"] = 1,
    ["marshbadge"] = 1,
    ["volcanobadge"] = 1,
    ["earthbadge"] = 1,
    ["trophybadge"] = 1,
    ["abra"] = 1, 
    ["aerodactyl"] = 1, 					
    ["alakazam"] = 1, 					
    ["arbok"] = 1, 						
    ["arcanine"] = 1, 					
    ["articuno"] = 1, 					
    ["beedrill"] = 1, 					
    ["bellsprout"] = 1, 					
    ["blastoise"] = 1, 					
    ["boulderbadge"] = 1, 				
    ["butterfree"] = 1, 				
    ["cascadebadge"] = 1, 			
    ["caterpie"] = 1, 				   
    ["chansey"] = 1, 				 
    ["charizard"] = 1, 				 
    ["charmander"] = 1, 				 	
    ["charmeleon"] = 1, 				 	
    ["clefable"] = 1, 					
    ["clefairy"] = 1, 				 	
    ["cloyster"] = 1, 				 
    ["cubone"] = 1, 						
    ["dewgong"] = 1, 				 
    ["diglett"] = 1, 					
    ["ditto"] = 1, 						
    ["dodrio"] = 1, 						
    ["doduo"] = 1, 		
    ["dragonair"] = 1, 				
    ["dragonite"] = 1, 					
    ["dratini"] = 1, 					
    ["drowzee"] = 1, 					 
    ["dugtrio"] = 1, 				  
    ["earthbadge"] = 1, 					
    ["eevee"] = 1, 						
    ["ekans"] = 1, 			
    ["electabuzz"] = 1, 				   
    ["electrode"] = 1, 					
    ["exeggcute"] = 1, 					 
    ["exeggutor"] = 1, 				 
    ["farfetchd"] = 1, 					 
    ["fearow"] = 1, 					
    ["flareon"] = 1, 					
    ["gastly"] = 1, 						
    ["gengar"] = 1, 						
    ["geodude"] = 1, 				 	
    ["gloom"] = 1, 		
    ["golbat"] = 1, 						 
    ["goldeen"] = 1, 				
    ["golduck"] = 1, 		 			
    ["golem"] = 1, 		 			
    ["graveler"] = 1, 		
    ["grimer"] = 1, 		 			
    ["growlithe"] = 1, 		 	
    ["gyarados"] = 1, 			
    ["haunter"] = 1, 			
    ["hitmonchan"] = 1, 		
    ["hitmonlee"] = 1, 				 
    ["horsea"] = 1, 					
    ["hypno"] = 1, 				 	
    ["ivysaur"] = 1, 					
    ["jigglypuff"] = 1, 				
    ["jolteon"] = 1, 				
    ["jynx"] = 1, 					
    ["kabuto"] = 1, 					
    ["kabutops"] = 1, 
    ["kadabra"] = 1,
    ["kaknua"] = 1, 			 	 		 
    ["kangaskhan"] = 1, 			 	 	
    ["kingler"] = 1, 			 	 	
    ["koffing"] = 1, 			 	 	
    ["krabby"] = 1, 				 	 	
    ["lapras"] = 1, 			 			
    ["lickitung"] = 1, 			 		
    ["machamp"] = 1, 				
    ["machoke"] = 1, 					 
    ["machop"] = 1, 			 		
    ["magikarp"] = 1, 			 		
    ["magmar"] = 1, 					  
    ["magnemite"] = 1, 			   	
    ["magneton"] = 1, 				
    ["mankey"] = 1, 						
    ["marowak"] = 1, 				 
    ["marshbadge"] = 1, 					
    ["meowth"] = 1, 					
    ["metapod"] = 1, 				 
    ["mew"] = 1, 						
    ["mewtwo"] = 1, 						 
    ["moltres"] = 1, 					
    ["mr_mime"] = 1, 					
    ["muk"] = 1, 	
    ["nidoking"] = 1, 				  
    ["nidoqueen"] = 1, 				 	
    ["nidoran"] = 1, 				 	
    ["nidorian"] = 1, 				  
    ["nidorina"] = 1, 				 	
    ["nidorino"] = 1, 				 	
    ["ninetails"] = 1, 					
    ["oddish"] = 1, 				 		
    ["omanyte"] = 1, 				 	
    ["omastar"] = 1, 					
    ["onix"] = 1, 				 	
    ["paras"] = 1, 						 
    ["parasect"] = 1, 					
    ["persian"] = 1, 					
    ["pidgeotto"] = 1, 					
    ["pidgeot"] = 1, 					
    ["pidgey"] = 1, 						
    ["pikachu"] = 1, 					
    ["pinsir"] = 1, 						 
    ["poliwag"] = 1, 					
    ["poliwhirl"] = 1, 				  
    ["poliwrath"] = 1, 					
    ["ponyta"] = 1, 						
    ["porygon"] = 1, 					
    ["primeape"] = 1, 				    
    ["psyduck"] = 1, 				
    ["raichu"] = 1, 						
    ["rainbowbadge"] = 1, 				
    ["rapidash"] = 1, 					
    ["raticate"] = 1, 				
    ["rattata"] = 1, 					
    ["rhydon"] = 1, 						
    ["rhyhorn"] = 1, 					
    ["sandshrew"] = 1, 				 	
    ["sandslash"] = 1, 				
    ["scyther"] = 1, 					
    ["seadra"] = 1, 					
    ["seaking"] = 1, 		 			
    ["seel"] = 1, 		 	
    ["shellder"] = 1, 		 			 
    ["slowbro"] = 1, 		 			
    ["slowpoke"] = 1, 		 			
    ["snorlax"] = 1, 				 	
    ["soulbadge"] = 1, 					
    ["spearow"] = 1, 				 	
    ["squirtle"] = 1, 				 	
    ["starmie"] = 1, 				
    ["staryu"] = 1, 				 		
    ["tangela"] = 1, 				
    ["tauros"] = 1, 						
    ["tentacool"] = 1, 					
    ["tentacruel"] = 1, 					 
    ["thunderbadge"] = 1, 				
    ["togepi"] = 1, 			 			
    ["trophybadge"] = 1, 			 	
    ["vaporeon"] = 1, 			 	 	
    ["venomoth"] = 1, 			 	 	
    ["venonat"] = 1, 			 	 	
    ["venusaur"] = 1, 			 	 	 
    ["victreebel"] = 1, 				 		
    ["vileplume"] = 1, 		 			
    ["volcanobadge"] = 1, 		 		
    ["voltorb"] = 1, 				 
    ["vulpix"] = 1, 				
    ["wartortle"] = 1, 		 			 
    ["weedle"] = 1, 				 	
    ["weepinbell"] = 1, 				   
    ["weezing"] = 1, 			   	
    ["wigglytuff"] = 1, 			 		
    ["zapdos"] = 1, 					 
    ["zubat"] = 1, 				 
    ["bulbasaur"] = 1, 			   		 
    ["blastoisev"] = 1, 			 	 	
    ["charizardv"] = 1, 				 	
    ["mewv"] = 1, 		 				
    ["pikachuv"] = 1, 		 		 
    ["snorlaxv"] = 1, 					
    ["venusaurv"] = 1, 				
    ["blastoisevmax"] = 1, 		 	   
    ["mewtwogx"] = 1, 				 	   
    ["snorlaxvmax"] = 1, 				   
    ["venusaurvmax"] = 1, 			   	  
    ["vmaxcharizard"] = 1, 			   
    ["vmaxpikachu"] = 1, 			   
    ["rainbowmewtwogx"] = 1, 			
    ["rainbowvmaxcharizard"] = 1, 		
    ["rainbowvmaxpikachu"] = 1, 		
    ["snorlaxvmaxrainbow"] = 1
}