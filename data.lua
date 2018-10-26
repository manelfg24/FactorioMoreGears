require("Prototypes.Recipe")
require("Prototypes.Technology")

--This function inserts the given recipe into the given module's limitation:
function insert_limitation( m, r )
	if data.raw.module[ m ] then
		if data.raw.module[ m ].limitation then
			table.insert( data.raw.module[ m ].limitation, r )
		end
	end
end

--This funcion inserts the given recipe into the productivity module limitation:
function insert_productivity_limitation( r )
	 --This should not casue an error even if all modules were removed from the game
	 --This should also be compatible with Bob's modules:
	 
	insert_limitation( "productivity-module",   r )
	insert_limitation( "productivity-module-2", r )
	insert_limitation( "productivity-module-3", r )
	insert_limitation( "productivity-module-4", r )
	insert_limitation( "productivity-module-5", r )
	insert_limitation( "productivity-module-6", r )
	insert_limitation( "productivity-module-7", r )
	insert_limitation( "productivity-module-8", r )
	
	insert_limitation( "raw-productivity-module", r )
	insert_limitation( "raw-productivity-module-2", r )
	insert_limitation( "raw-productivity-module-3", r )
	insert_limitation( "raw-productivity-module-4", r )
	insert_limitation( "raw-productivity-module-5", r )
	insert_limitation( "raw-productivity-module-6", r )
	insert_limitation( "raw-productivity-module-7", r )
	insert_limitation( "raw-productivity-module-8", r )
end

--Change the default icon for the base copper cable recipe:
data.raw.recipe[ "iron-gear-wheel" ].icon = "__FactorioMoreGears__/Graphics/iron-gear-wheel2.png"
data.raw.recipe[ "iron-gear-wheel" ].icon_size = 32,

--This code allows productivity modules to use some (but not all) advanced crafting recipes:
insert_productivity_limitation( "advanced-gear1" )
insert_productivity_limitation( "advanced-gear2" )
insert_productivity_limitation( "advanced-gear3" )