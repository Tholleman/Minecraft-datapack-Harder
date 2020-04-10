scoreboard players set amount hrd_num 12
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 40
execute if score rng hrd_num matches 8 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.4
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute store result score filled hrd_num run data get entity @s HandItems[0]
execute unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:golden_sword",Count:1b}
execute if score rng hrd_num matches 0..3 if entity @s[nbt={IsBaby:1b}] run data remove entity @s IsBaby
execute if score rng hrd_num matches 0 run enchant @s minecraft:quick_charge 3
execute if score rng hrd_num matches 0 run enchant @s minecraft:fire_aspect 2
execute if score rng hrd_num matches 1 run enchant @s minecraft:piercing 4
execute if score rng hrd_num matches 1 run enchant @s minecraft:sharpness 5
execute if score rng hrd_num matches 2 run enchant @s minecraft:multishot 1
execute if score rng hrd_num matches 2 run enchant @s minecraft:knockback 2
execute if score rng hrd_num matches 3 unless entity @s[nbt={IsBaby:1b}] as @e[type=piglin,distance=0.1..8,limit=1] at @s unless entity @s[nbt={IsBaby:1b}] run summon minecraft:piglin ~ ~ ~ {IsBaby:1b}
execute if score rng hrd_num matches 4 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 4 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:golden_boots",Count:1b}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:golden_leggings",Count:1b}
execute if score rng hrd_num matches 6 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 6 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:golden_chestplate",Count:1b}
execute if score rng hrd_num matches 7 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 7 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:golden_helmet",Count:1b}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num