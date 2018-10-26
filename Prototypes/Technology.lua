data:extend({
{
	type = "technology",
	name = "bettergearmaking",
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel3.png",
	icon_size = 32,
	effects =
	{
		{ type = "unlock-recipe", recipe = "advanced-gear1" }
	},
	prerequisites = { "circuit-network" },
	unit =
	{
		count = 25,
		ingredients =
		{
			{ "science-pack-1", 1 }
		},
		time = 30
	}
},
{
	type = "technology",
	name = "evenbettergearmaking",
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel4.png",
	icon_size = 32,
	effects =
	{
		{ type = "unlock-recipe", recipe = "advanced-gear2" }
	},
	prerequisites = { "bettergearmaking", "advanced-electronics" },
	unit =
	{
		count = 50,
		ingredients =
		{
			{ "science-pack-1", 1 },
			{ "science-pack-2", 1 }
		},
		time = 30
	}
},
{
	type = "technology",
	name = "advancedgearmaking",
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel5.png",
	icon_size = 32,
	effects =
	{
		{ type = "unlock-recipe", recipe = "advanced-gear3" }
	},
	prerequisites = { "evenbettergearmaking" },
	unit =
	{
		count = 75,
		ingredients =
		{
			{ "science-pack-1", 1 },
			{ "science-pack-2", 1 },
			{ "science-pack-3", 1 }
		},
		time = 30
	}
},
{
	type = "technology",
	name = "ultimategearmaking",
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel8.png",
	icon_size = 32,
	effects =
	{
		{ type = "unlock-recipe", recipe = "advanced-gear4" }
	},
	prerequisites = { "advancedgearmaking" },
	unit =
	{
		count = 100,
		ingredients =
		{
			{ "science-pack-1", 1 },
			{ "science-pack-2", 1 },
			{ "science-pack-3", 1 },
			{ "production-science-pack", 1 }
		},
		time = 30
	}
}
})