scoreboard players set amount hrd_num 7
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 3 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 40
execute if score rng hrd_num matches 3 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.3
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 run summon minecraft:blaze ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:blaze ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:blaze ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:blaze ~ ~ ~
execute if score rng hrd_num matches 1 run setblock ~ ~ ~ minecraft:lava keep
execute if score rng hrd_num matches 2 run effect give @s minecraft:invisibility 1000000 0 true
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num