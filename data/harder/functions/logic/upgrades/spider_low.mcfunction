scoreboard players set amount hrd_num 8
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 60
execute if score rng hrd_num matches 4 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.5
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0 run effect give @s minecraft:invisibility 1000000 0 false
execute if score rng hrd_num matches 0 run effect give @s minecraft:regeneration 1000000 1 true
execute if score rng hrd_num matches 0 run effect give @s minecraft:resistance 1000000 1 true
execute if score rng hrd_num matches 0 run effect give @s minecraft:strength 1000000 1 true
execute if score rng hrd_num matches 1 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace minecraft:air
execute if score rng hrd_num matches 2 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 2 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 2 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 2 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 2 run summon minecraft:cave_spider ~ ~ ~
execute if score rng hrd_num matches 2 run summon minecraft:cave_spider ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num