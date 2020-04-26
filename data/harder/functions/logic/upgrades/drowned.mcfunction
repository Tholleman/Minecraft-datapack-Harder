scoreboard players set amount hrd_num 13
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run data modify entity @s CanPickUpLoot set value 1b
execute if score rng hrd_num matches 2 run attribute @s generic.movement_speed base set 0.3
execute if score rng hrd_num matches 3 run attribute @s minecraft:generic.max_health base set 40
execute if score rng hrd_num matches 3 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 4 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 5 run data modify entity @s IsBaby set value 1
execute if score rng hrd_num matches 6 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 6 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 6 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 6 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 6 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 7 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 7 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 8 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 8 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:2},{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 9 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 9 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 10 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 10 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:chainmail_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 11 run attribute @s minecraft:zombie.spawn_reinforcements base set 1
execute if score rng hrd_num matches 12 store result score filled hrd_num run data get entity @s HandItems[0]
execute if score rng hrd_num matches 12 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:trident",Count:1b}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty