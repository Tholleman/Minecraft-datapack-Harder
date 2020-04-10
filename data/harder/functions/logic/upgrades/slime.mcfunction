scoreboard players set amount hrd_num 8
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 40
execute if score rng hrd_num matches 4 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.5
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0 run data modify entity @s Size set value 5
execute if score rng hrd_num matches 1 run effect give @s minecraft:speed 1000000 2
execute if score rng hrd_num matches 2 run effect give @s minecraft:fire_resistance 1000000 0
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/slime_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num