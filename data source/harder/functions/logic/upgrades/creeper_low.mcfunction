\var fast 0.35
\var health 60
\var amount 4
\file setup/setup_low.mctemplate

/execute if <<step>> 0 run data modify entity @s Fuse set value 1
/execute if <<step>> 1 run data modify entity @s ExplosionRadius set value 6
\repeat 4
/execute if <<step>> 2 at @s run summon minecraft:creeper ~ ~ ~
/execute if <<step>> 3 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:infested_stone replace minecraft:stone
