--This function will disable any recipe:
--Just pass it the LuaRecipe object:
function disable_recipe( recipe )
	if recipe.enabled then
		recipe.enabled = false
	end
end

--This fuction manages gear-related recipes for the given force:
--It does not return any value.
function update_recipes( force )
	--If the force doesn't exist, skip everything:
	if force == nil then
		return
	end
	
	--Else, the force exists
	if force.technologies[ "ultimategearmaking" ].researched == true then
		disable_recipe( force.recipes[ "advanced-gear3" ])
		disable_recipe( force.recipes[ "advanced-gear2" ])
		disable_recipe( force.recipes[ "advanced-gear1" ])
		disable_recipe( force.recipes[ "iron-gear-wheel" ])
	elseif force.technologies[ "advancedgearmaking" ].researched == true then
		disable_recipe( force.recipes[ "advanced-gear2" ])
		disable_recipe( force.recipes[ "advanced-gear1" ])
		disable_recipe( force.recipes[ "iron-gear-wheel" ])
	elseif force.technologies[ "evenbettergearmaking" ].researched == true then
		disable_recipe( force.recipes[ "advanced-gear1" ])
		disable_recipe( force.recipes[ "iron-gear-wheel" ])
	elseif force.technologies[ "bettergearmaking" ].researched == true then
		disable_recipe( force.recipes[ "iron-gear-wheel" ])
	end
end

--Forces' recipes will be updated on 2 different conditions:
--	1: When that force completes a research
--	2: Every 60 ticks
--Hopefully the frame rate will not be impacted by my code

script.on_event( defines.events.on_research_finished, function( event )
	--First create a local variable:
	local force = event.research.force
	
	--Change crafting recipe to most updated one & disable all obsolete ones to prevent cluttering of GUI
	update_recipes( force )
	
	--Now print a text based on what was unlocked:
	if event.research.name == "ultimategearmaking" then
		force.print({ "Q-gearMaking-announcement.gearMaking_announcement", 8 })
	elseif event.research.name == "advancedgearmaking" then
		force.print({ "Q-gearMaking-announcement.gearMaking_announcement", 5 })
	elseif event.research.name == "evenbettergearmaking" then
		force.print({ "Q-gearMaking-announcement.gearMaking_announcement", 4 })
	elseif event.research.name == "bettergearmaking" then
		force.print({ "Q-gearMaking-announcement.gearMaking_announcement", 3 })
	end
end
)

script.on_event( defines.events.on_tick, function( event )
	--Every second we update forces' recipes:
	if event.tick % 60 == 0 then
		for _, f in pairs( game.forces ) do
			update_recipes( f )
		end
	end
end ) 