\file ../../config.txt
\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 2
\file setup/setup_attributes.mctemplate

/execute if <<step>> 0 run data modify entity @s Fuse set value 15
\repeat 2
/execute if <<step>> 1 at @s run summon minecraft:creeper ~ ~ ~

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/creeper_low

\file setup/rng_teardown.mctemplate
