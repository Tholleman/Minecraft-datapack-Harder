\var fast 0.4
\var health 40
\var amount 2
\file setup/setup_attributes.mctemplate

/execute if <<step>> 0 run data modify entity @s Size set value 5
\repeat 4
/execute if <<step>> 1 at @s run summon minecraft:magma_cube ~ ~ ~ {Size:2}

\file setup/rng_teardown.mctemplate
