\var amount 7
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 0 run data modify entity @s Health set value 60

\repeat 4
/execute if <<step>> 1 at @s run summon minecraft:creeper ~ ~ ~

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.35

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 1

/execute if <<step>> 4 run data modify entity @s ExplosionRadius set value 6

/execute if <<step>> 5 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:infested_stone replace minecraft:stone

/execute if <<step>> 6 run data modify entity @s Fuse set value 1
