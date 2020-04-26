scoreboard players set amount hrd_num 7
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run attribute @s generic.movement_speed base set 0.5
execute if score rng hrd_num matches 2 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 3 run effect give @s minecraft:speed 1000000 2 true
execute if score rng hrd_num matches 4 run effect give @s minecraft:fire_resistance 1000000 0 true
execute if score rng hrd_num matches 5 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 5 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 5 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 5 at @s run summon minecraft:slime ~ ~ ~ {Size:2}
execute if score rng hrd_num matches 6 run data modify entity @s Size set value 5
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/slime_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty