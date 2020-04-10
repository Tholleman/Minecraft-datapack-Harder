scoreboard players set amount hrd_num 6
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 2 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 40
execute if score rng hrd_num matches 2 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 3 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.3
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 run data modify entity @s Fuse set value 15
execute if score rng hrd_num matches 1 at @s run summon minecraft:creeper ~ ~ ~
execute if score rng hrd_num matches 1 at @s run summon minecraft:creeper ~ ~ ~
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/creeper_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num