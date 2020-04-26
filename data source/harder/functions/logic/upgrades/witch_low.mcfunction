\var amount 9
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 0 run data modify entity @s Health set value 60

/execute if <<step>> 1 run attribute @s generic.movement_speed base set 0.5

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 1

\repeat 5
/execute if <<step>> 3 if entity @p[distance=..24] run summon minecraft:witch

/execute if <<step>> 4 run effect give @e[type=#<<ns>>:upgradable,distance=1..30] minecraft:regeneration 180 1
/execute if <<step>> 5 run effect give @e[type=#<<ns>>:upgradable,distance=1..30] minecraft:fire_resistance 180 0 true
/execute if <<step>> 6 run effect give @e[type=#<<ns>>:upgradable,distance=1..30] minecraft:strength 180 1 true
/execute if <<step>> 7 run effect give @e[type=#<<ns>>:upgradable,distance=1..30] minecraft:speed 180 1 true
/execute if <<step>> 8 run effect give @e[type=#<<ns>>:upgradable,distance=1..30] minecraft:invisibility 180 0

\file setup/rng_teardown.mctemplate
