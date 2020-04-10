scoreboard players set amount hrd_num 9
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 40
execute if score rng hrd_num matches 5 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.5
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 run effect give @s minecraft:invisibility 1000000 0
execute if score rng hrd_num matches 1 run effect give @s minecraft:regeneration 1000000 1
execute if score rng hrd_num matches 2 run effect give @s minecraft:resistance 1000000 1
execute if score rng hrd_num matches 3 run effect give @s minecraft:strength 1000000 1
execute if score rng hrd_num matches 4 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 4 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 4 run summon minecraft:spider ~ ~ ~
execute if score rng hrd_num matches 4 run summon minecraft:spider ~ ~ ~
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/spider_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num