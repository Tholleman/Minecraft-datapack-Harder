\var amount 6
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 0 run data modify entity @s Health set value 60

/execute if <<step>> 1 run attribute @s generic.movement_speed base set 0.5

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 1

/execute if <<step>> 3 run effect give @s minecraft:invisibility 1000000 0 false
/execute if <<step>> 3 run effect give @s minecraft:regeneration 1000000 1 true
/execute if <<step>> 3 run effect give @s minecraft:resistance 1000000 1 true
/execute if <<step>> 3 run effect give @s minecraft:strength 1000000 1 true

/execute if <<step>> 4 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace #<<ns>>:air

\repeat 7
/execute if <<step>> 5 run summon minecraft:cave_spider ~ ~ ~
