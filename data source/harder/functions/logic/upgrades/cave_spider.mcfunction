\file util/shortcuts.mctemplate
\var fast 0.4
\var health 40
\var amount 5
\file setup/setup_attributes.mctemplate

/execute if <<step>> 0 run effect give @s minecraft:invisibility 1000000 0 true
/execute if <<step>> 1 run effect give @s minecraft:regeneration 1000000 2
/execute if <<step>> 2 run effect give @s minecraft:resistance 1000000 1
/execute if <<step>> 3 run effect give @s minecraft:strength 1000000 4
\repeat 4
/execute if <<step>> 4 run summon minecraft:cave_spider ~ ~ ~

\file setup/rng_teardown.mctemplate
