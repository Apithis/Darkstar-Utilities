game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["terra-inserters"].researched then
    force.recipes["assembling-machine-4"].enabled = true
    force.recipes["terra-underground-belt"].enabled = true
    force.recipes["terra-underground-belt2"].enabled = true
  end
  if force.technologies["bio-sample"].researched then
    force.recipes["sample2"].enabled = true
    force.recipes["quantum-blood"].enabled = true
  end
  if force.technologies["alien-weapons"].researched then
    force.recipes["quantum-blood"].enabled = true
  end
end
