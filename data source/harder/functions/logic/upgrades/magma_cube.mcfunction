\var amount 2
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 1 run data modify entity @s Health set value 40

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.4

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 0.6

/execute if <<step>> 4 run data modify entity @s Size set value 5

\repeat 4
/execute if <<step>> 5 at @s run summon minecraft:magma_cube ~ ~ ~ {Size:2}

\file setup/rng_teardown.mctemplate
