scoreboard players set amount hrd_num 100
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 as @e[type=minecraft:zombified_piglin,distance=..16] run data modify entity @s Anger set value 400s
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num