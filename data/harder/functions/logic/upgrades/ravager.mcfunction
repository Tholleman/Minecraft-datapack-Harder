scoreboard players set amount hrd_num 8
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 200
execute if score rng hrd_num matches 4 run data modify entity @s Health set value 200
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.35
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0..2 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 1
execute if score rng hrd_num matches 3 run summon minecraft:ravager ~ ~ ~ {Passengers:[{id:"minecraft:evoker"}]}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num