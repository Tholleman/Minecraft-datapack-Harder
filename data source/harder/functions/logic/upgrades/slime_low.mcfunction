\file ../../config.txt
\file util/shortcuts.mctemplate
\var fast 0.5
\var health 60
\var amount 4
\file setup/setup_attributes.mctemplate

/execute if score rng hrd_num matches 0 run data modify entity @s Size set value 5

/execute if score rng hrd_num matches 1 run effect give @s minecraft:invisibility 1000000 0

\repeat 2
/execute if score rng hrd_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {
	Size:3,
	DeathLootTable:"harder:empty",
	Tags:["<<tagDoNotUpgrade>>"]
}

\repeat 4
/execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:3}
