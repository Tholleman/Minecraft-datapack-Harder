\file util/shortcuts.mctemplate
\var fast 0.5
\var health 40
\var amount 4
\file setup/setup_attributes.mctemplate

/execute if score rng hrd_num matches 0 run data modify entity @s Size set value 5

/execute if score rng hrd_num matches 1 run effect give @s minecraft:speed 1000000 2

/execute if score rng hrd_num matches 2 run effect give @s minecraft:fire_resistance 1000000 0

\repeat 4
/execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:2}

/execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/slime_low

\file setup/rng_teardown.mctemplate
