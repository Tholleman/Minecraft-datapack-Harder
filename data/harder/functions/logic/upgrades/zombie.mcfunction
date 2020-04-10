scoreboard players set amount hrd_num 14
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 40
execute if score rng hrd_num matches 10 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 12 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.3
execute if score rng hrd_num matches 13 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~
execute if score rng hrd_num matches 1 run data modify entity @s IsBaby set value 1
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:iron_boots",Count:1b}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:iron_leggings",Count:1b}
execute if score rng hrd_num matches 4 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 4 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:iron_chestplate",Count:1b}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:iron_helmet",Count:1b}
execute if score rng hrd_num matches 6 store result score filled hrd_num run data get entity @s HandItems[0]
execute if score rng hrd_num matches 6 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:iron_axe",Count:1b}
execute if score rng hrd_num matches 7 store result score filled hrd_num run data get entity @s HandItems[1]
execute if score rng hrd_num matches 7 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[1] set value {id:"minecraft:totem_of_undying",Count:1b}
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:zombie.spawnReinforcements}].Base set value 1
execute if score rng hrd_num matches 9 run data modify entity @s CanPickUpLoot set value 1b
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/zombie_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num