--This function returns the electronics crafting category if the mod bobassembly is in place:
function craft_category()
	if data.raw[ "recipe-category" ].electronics then
		return "electronics"
	else
		return "crafting"
	end
end

data:extend({
{
	type = "recipe",
	name = "advanced-gear1",
	category = craft_category(),
	enabled = false,
	energy_required = 0.5,
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel3.png",
	icon_size = 32,
	ingredients = 
	{
		{ "iron-plate", 1 }
	},
	result = "iron-gear-wheel",
	result_count = 3
},
{
	type = "recipe",
	name = "advanced-gear2",
	category = craft_category(),
	enabled = false,
	energy_required = 0.5,
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel4.png",
	icon_size = 32,
	ingredients = 
	{
		{ "iron-plate", 1 }
	},
	result = "iron-gear-wheel",
	result_count = 4
},
{
	type = "recipe",
	name = "advanced-gear3",
	category = craft_category(),
	enabled = false,
	energy_required = 0.5,
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel5.png",
	icon_size = 32,
	ingredients = 
	{
		{ "iron-plate", 1 }
	},
	result = "iron-gear-wheel",
	result_count = 5
},
{
	type = "recipe",
	name = "advanced-gear4",
	category = craft_category(),
	enabled = false,
	energy_required = 0.5,
	icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel8.png",
	icon_size = 32,
	ingredients = 
	{
		{ "iron-plate", 1 }
	},
	result = "iron-gear-wheel",
	result_count = 8
}
})