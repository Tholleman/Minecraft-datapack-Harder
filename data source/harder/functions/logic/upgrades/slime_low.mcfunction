\var amount 6
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.movement_speed base set 0.5

/execute if <<step>> 1 run attribute @s generic.knockback_resistance base set 1

/execute if <<step>> 2 run data modify entity @s Size set value 5

\repeat 4
/execute if <<step>> 3 at @s run summon minecraft:slime ~ ~ ~ {Size:3}

\repeat 2
/execute if <<step>> 4 run summon minecraft:magma_cube ~ ~ ~ {
	Size:3,
	DeathLootTable:"<<ns>>:empty",
	Tags:["<<tagDoNotUpgrade>>"]
}

/execute if <<step>> 5 run effect give @s minecraft:invisibility 1000000 0
