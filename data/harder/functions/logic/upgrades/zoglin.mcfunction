scoreboard players set amount hrd_num 5
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run attribute @s minecraft:generic.max_health base set 60
execute if score rng hrd_num matches 1 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 2 run attribute @s generic.movement_speed base set 0.4
execute if score rng hrd_num matches 3 run attribute @s generic.knockback_resistance base set 1
execute if score rng hrd_num matches 4 as @e[distance=..24,type=#harder:upgradable,type=!minecraft:zoglin,limit=4] run summon minecraft:zoglin ~ ~ ~ {IsBaby:1b}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty