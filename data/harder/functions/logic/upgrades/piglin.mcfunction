scoreboard players set amount hrd_num 12
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute store result score filled hrd_num run data get entity @s HandItems[0]
execute unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:golden_sword",Count:1b}
execute if score rng hrd_num matches 0..3 if entity @s[nbt={IsBaby:1b}] run data remove entity @s IsBaby
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run attribute @s minecraft:generic.max_health base set 40
execute if score rng hrd_num matches 1 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 2 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 3 run enchant @s minecraft:quick_charge 3
execute if score rng hrd_num matches 3 run enchant @s minecraft:fire_aspect 2
execute if score rng hrd_num matches 4 run enchant @s minecraft:piercing 4
execute if score rng hrd_num matches 4 run enchant @s minecraft:sharpness 5
execute if score rng hrd_num matches 5 run enchant @s minecraft:multishot 1
execute if score rng hrd_num matches 5 run enchant @s minecraft:knockback 2
execute if score rng hrd_num matches 6 unless entity @s[nbt={IsBaby:1b}] as @e[type=piglin,distance=0.1..8,limit=1] at @s unless entity @s[nbt={IsBaby:1b}] run summon minecraft:piglin ~ ~ ~ {IsBaby:1b}
execute if score rng hrd_num matches 7 run attribute @s generic.movement_speed base set 0.4
execute if score rng hrd_num matches 8 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 8 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:golden_boots",Count:1b}
execute if score rng hrd_num matches 9 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 9 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:golden_leggings",Count:1b}
execute if score rng hrd_num matches 10 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 10 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:golden_chestplate",Count:1b}
execute if score rng hrd_num matches 11 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 11 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:golden_helmet",Count:1b}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty