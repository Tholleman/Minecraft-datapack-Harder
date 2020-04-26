\var amount 7
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s generic.movement_speed base set 0.5

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 0.6

/execute if <<step>> 3 run effect give @s minecraft:speed 1000000 2 true

/execute if <<step>> 4 run effect give @s minecraft:fire_resistance 1000000 0 true

\repeat 4
/execute if <<step>> 5 at @s run summon minecraft:slime ~ ~ ~ {Size:2}

/execute if <<step>> 6 run data modify entity @s Size set value 5

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/slime_low

\file setup/rng_teardown.mctemplate
