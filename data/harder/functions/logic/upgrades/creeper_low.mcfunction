scoreboard players set amount hrd_num 7
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 60
execute if score rng hrd_num matches 4 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 1
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.35
execute if score rng hrd_num matches 0 run data modify entity @s Fuse set value 1
execute if score rng hrd_num matches 1 run data modify entity @s ExplosionRadius set value 6
execute if score rng hrd_num matches 2 at @s run summon minecraft:creeper ~ ~ ~
execute if score rng hrd_num matches 2 at @s run summon minecraft:creeper ~ ~ ~
execute if score rng hrd_num matches 2 at @s run summon minecraft:creeper ~ ~ ~
execute if score rng hrd_num matches 2 at @s run summon minecraft:creeper ~ ~ ~
execute if score rng hrd_num matches 3 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:infested_stone replace minecraft:stone