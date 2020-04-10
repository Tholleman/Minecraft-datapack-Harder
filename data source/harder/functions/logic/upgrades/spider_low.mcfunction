\file util/shortcuts.mctemplate
\var fast 0.5
\var health 60
\var amount 4
\file setup/setup_attributes.mctemplate

/execute if <<step>> 0 run effect give @s minecraft:invisibility 1000000 0 false
/execute if <<step>> 0 run effect give @s minecraft:regeneration 1000000 1 true
/execute if <<step>> 0 run effect give @s minecraft:resistance 1000000 1 true
/execute if <<step>> 0 run effect give @s minecraft:strength 1000000 1 true

/execute if <<step>> 1 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace minecraft:air

\repeat 4
/execute if <<step>> 2 run summon minecraft:spider ~ ~ ~
\repeat 2
/execute if <<step>> 2 run summon minecraft:cave_spider ~ ~ ~

\file setup/rng_teardown.mctemplate
