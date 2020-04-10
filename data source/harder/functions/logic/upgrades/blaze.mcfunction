\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 3
\file setup/setup_attributes.mctemplate

\repeat 4
/execute if <<step>> 0 run summon minecraft:blaze ~ ~ ~

/execute if <<step>> 1 run setblock ~ ~ ~ minecraft:lava keep

/execute if <<step>> 2 run effect give @s minecraft:invisibility 1000000 0 true

\file setup/rng_teardown.mctemplate
