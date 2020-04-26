scoreboard players set amount hrd_num 6
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s minecraft:generic.max_health base set 60
execute if score rng hrd_num matches 0 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 1 run attribute @s generic.movement_speed base set 0.5
execute if score rng hrd_num matches 2 run attribute @s generic.knockback_resistance base set 1
execute if score rng hrd_num matches 3 run effect give @s minecraft:invisibility 1000000 0 false
execute if score rng hrd_num matches 3 run effect give @s minecraft:regeneration 1000000 1 true
execute if score rng hrd_num matches 3 run effect give @s minecraft:resistance 1000000 1 true
execute if score rng hrd_num matches 3 run effect give @s minecraft:strength 1000000 1 true
execute if score rng hrd_num matches 4 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace #harder:air
execute if score rng hrd_num matches 5 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 5 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 5 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 5 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 5 run summon minecraft:cave_spider ~ ~ ~
execute if score rng hrd_num matches 5 run summon minecraft:cave_spider ~ ~ ~