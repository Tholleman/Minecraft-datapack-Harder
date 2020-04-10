scoreboard players set amount hrd_num 11
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 40
execute if score rng hrd_num matches 7 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.5
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0..1 store result score filled hrd_num run data get entity @s HandItems[1]
execute if score rng hrd_num matches 0..1 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[1] set value {id:"minecraft:totem_of_undying",Count:1b}
execute if score rng hrd_num matches 2..3 run enchant @s minecraft:sharpness 5
execute if score rng hrd_num matches 4..5 run summon minecraft:vindicator ~ ~ ~
execute if score rng hrd_num matches 6 run summon minecraft:ravager ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num