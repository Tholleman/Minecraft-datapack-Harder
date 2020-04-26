\var amount 10
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run effect give @s minecraft:regeneration 1000000 2

/execute if <<step>> 2 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 2 run data modify entity @s Health set value 40

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.4

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

/execute if <<step>> 5 run effect give @s minecraft:invisibility 1000000 0 true
/execute if <<step>> 6 run effect give @s minecraft:resistance 1000000 1
/execute if <<step>> 7 run effect give @s minecraft:strength 1000000 4
/execute if <<step>> 8 run fill ~ ~ ~ ~ ~ ~ minecraft:cobweb replace #<<ns>>:air
\repeat 4
/execute if <<step>> 9 run summon minecraft:cave_spider ~ ~ ~
/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/cave_spider_low

\file setup/rng_teardown.mctemplate
