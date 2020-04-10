\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 8
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~

/execute if score rng hrd_num matches 1 run data modify entity @s IsBaby set value 1

/execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[0]
/execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:depth_strider",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}

/execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[1]
/execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:leather_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}

/execute if score rng hrd_num matches 4 store result score filled hrd_num run data get entity @s ArmorItems[2]
/execute if score rng hrd_num matches 4 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:leather_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}

/execute if score rng hrd_num matches 5 store result score filled hrd_num run data get entity @s ArmorItems[3]
/execute if score rng hrd_num matches 5 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]}}

/execute if score rng hrd_num matches 6 store result score filled hrd_num run data get entity @s HandItems[0]
/execute if score rng hrd_num matches 6 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:looting",lvl:3s},{id:"minecraft:sweeping",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}}

/execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:zombie.spawn_reinforcements}].Base set value 0.8

/execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/zombie_villager_low

\file setup/rng_teardown.mctemplate
