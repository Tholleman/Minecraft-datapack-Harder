scoreboard players set amount hrd_num 6
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 2 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 60
execute if score rng hrd_num matches 2 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 3 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.4
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}
execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:iron_boots",Count:1b}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:iron_leggings",Count:1b}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:iron_chestplate",Count:1b}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:iron_helmet",Count:1b}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s HandItems[0]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[0] set value {id:"minecraft:iron_axe",Count:1b}
execute if score rng hrd_num matches 2 store result score filled hrd_num run data get entity @s HandItems[1]
execute if score rng hrd_num matches 2 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[1] set value {id:"minecraft:totem_of_undying",Count:1b}