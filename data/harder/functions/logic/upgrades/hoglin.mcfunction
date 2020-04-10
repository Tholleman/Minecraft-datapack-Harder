scoreboard players set amount hrd_num 14
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 10 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 60
execute if score rng hrd_num matches 10 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 12 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.5
execute if score rng hrd_num matches 13 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0..2 as @e[type=minecraft:hoglin,distance=..16,limit=2] run data modify entity @s InLove set value 400
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num