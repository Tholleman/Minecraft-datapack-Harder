\var amount 7
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run effect give @s minecraft:invisibility 1000000 0 true

/execute if <<step>> 2 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 2 run data modify entity @s Health set value 40

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

\repeat 4
/execute if <<step>> 5 run summon minecraft:blaze ~ ~ ~

/execute if <<step>> 6 run setblock ~ ~ ~ minecraft:lava keep

\file setup/rng_teardown.mctemplate
