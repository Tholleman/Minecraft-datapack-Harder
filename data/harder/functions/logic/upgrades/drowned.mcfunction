scoreboard players set amount hrd_num 13
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 40
execute if score rng hrd_num matches 9 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.3
execute if score rng hrd_num matches 12 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:drowned ~ ~ ~
execute if score rng hrd_num matches 1 run data modify entity @s IsBaby set value 1
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:2},{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 4 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 4 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:chainmail_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}
execute if score rng hrd_num matches 6 store result score filled hrd_num run data get entity @s HandItems[0]
execute if score rng hrd_num matches 6 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:trident",Count:1b}
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:zombie.spawn_reinforcements}].Base set value 1
execute if score rng hrd_num matches 8 run data modify entity @s CanPickUpLoot set value 1b
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num