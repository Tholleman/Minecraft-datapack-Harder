\var amount 2
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 1 run data modify entity @s Health set value 40

\repeat 2
/execute if <<step>> 2 at @s run summon minecraft:creeper ~ ~ ~

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

/execute if <<step>> 5 run data modify entity @s Fuse set value 15

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/creeper_low

\file setup/rng_teardown.mctemplate
