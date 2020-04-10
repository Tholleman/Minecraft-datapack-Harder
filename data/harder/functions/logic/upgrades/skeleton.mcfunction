scoreboard players set amount hrd_num 12
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 40
execute if score rng hrd_num matches 8 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.35
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 0 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:chainmail_boots",Count:1b}
execute if score rng hrd_num matches 1 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 1 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:chainmail_leggings",Count:1b}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:chainmail_chestplate",Count:1b}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:chainmail_helmet",Count:1b}
execute if score rng hrd_num matches 4 run enchant @s minecraft:power 5
execute if score rng hrd_num matches 5 run enchant @s minecraft:punch 2
execute if score rng hrd_num matches 6 run enchant @s minecraft:flame 1
execute if score rng hrd_num matches 7 run data modify entity @s CanPickUpLoot set value 1b
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/skeleton_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num