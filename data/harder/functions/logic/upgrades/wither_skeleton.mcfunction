scoreboard players set amount hrd_num 10
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run data modify entity @s CanPickUpLoot set value 1b
execute if score rng hrd_num matches 2 run attribute @s minecraft:generic.max_health base set 50
execute if score rng hrd_num matches 2 run data modify entity @s Health set value 50
execute if score rng hrd_num matches 3 run attribute @s generic.movement_speed base set 0.3
execute if score rng hrd_num matches 4 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0},HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 6 run enchant @s minecraft:knockback 2
execute if score rng hrd_num matches 7 run enchant @s minecraft:fire_aspect 2
execute if score rng hrd_num matches 8 run enchant @s minecraft:sharpness 5
execute if score rng hrd_num matches 9 run summon minecraft:wither_skeleton ~ ~ ~
execute if score rng hrd_num matches 9 run summon minecraft:wither_skeleton ~ ~ ~
execute if score rng hrd_num matches 9 run summon minecraft:wither_skeleton ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty