scoreboard players set amount hrd_num 6
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 as @e[type=minecraft:zombified_piglin,distance=..16] run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 as @e[type=minecraft:zombified_piglin,distance=..16] run data modify entity @s CanPickUpLoot set value 1b
execute if score rng hrd_num matches 2 as @e[type=minecraft:zombified_piglin,distance=..16] run attribute @s minecraft:generic.max_health base set 40
execute if score rng hrd_num matches 2 as @e[type=minecraft:zombified_piglin,distance=..16] run data modify entity @s Health set value 40
execute if score rng hrd_num matches 3 as @e[type=minecraft:zombified_piglin,distance=..16] run attribute @s generic.movement_speed base set 0.3d
execute if score rng hrd_num matches 4 as @e[type=minecraft:zombified_piglin,distance=..16] run attribute @s generic.knockback_resistance base set 0.6d
execute if score rng hrd_num matches 5 as @e[type=minecraft:zombified_piglin,distance=..16] run attribute @s generic.attack_damage base set 8.0d
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty