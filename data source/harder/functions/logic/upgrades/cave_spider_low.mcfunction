\var fast 0.5
\var health 60
\var amount 3
\file setup/setup_attributes.mctemplate

/execute if <<step>> 0 run effect give @s minecraft:invisibility 1000000 0 false
/execute if <<step>> 0 run effect give @s minecraft:regeneration 1000000 1 true
/execute if <<step>> 0 run effect give @s minecraft:resistance 1000000 1 true
/execute if <<step>> 0 run effect give @s minecraft:strength 1000000 1 true

/execute if <<step>> 1 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace #<<ns>>:air

\repeat 7
/execute if <<step>> 2 run summon minecraft:cave_spider ~ ~ ~

