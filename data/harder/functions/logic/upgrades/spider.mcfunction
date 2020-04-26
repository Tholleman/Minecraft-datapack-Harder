scoreboard players set amount hrd_num 6
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run effect give @s minecraft:regeneration 1000000 1
execute if score rng hrd_num matches 2 run attribute @s minecraft:generic.max_health base set 40
execute if score rng hrd_num matches 2 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 3 run attribute @s generic.movement_speed base set 0.5
execute if score rng hrd_num matches 4 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 5 run effect give @s minecraft:invisibility 1000000 0 true
execute if score rng hrd_num matches 6 run effect give @s minecraft:resistance 1000000 1
execute if score rng hrd_num matches 7 run effect give @s minecraft:strength 1000000 1
execute if score rng hrd_num matches 8 run fill ~ ~ ~ ~ ~ ~ minecraft:cobweb replace #harder:air
execute if score rng hrd_num matches 9 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 9 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 9 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 9 run summon minecraft:spider ~ ~ ~
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/spider_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty