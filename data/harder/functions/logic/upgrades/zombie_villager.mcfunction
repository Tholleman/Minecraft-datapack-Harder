scoreboard players set amount hrd_num 12
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 40
execute if score rng hrd_num matches 8 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.3
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~
execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~
execute if score rng hrd_num matches 1 run data modify entity @s IsBaby set value 1
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:depth_strider",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:leather_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 4 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 4 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:leather_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}
execute if score rng hrd_num matches 6 store result score filled hrd_num run data get entity @s HandItems[0]
execute if score rng hrd_num matches 6 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:looting",lvl:3s},{id:"minecraft:sweeping",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}}
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:zombie.spawnReinforcements}].Base set value 1
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/zombie_villager_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num