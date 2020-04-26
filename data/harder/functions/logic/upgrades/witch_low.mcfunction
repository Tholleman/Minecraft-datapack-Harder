scoreboard players set amount hrd_num 9
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s minecraft:generic.max_health base set 60
execute if score rng hrd_num matches 0 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 1 run attribute @s generic.movement_speed base set 0.5
execute if score rng hrd_num matches 2 run attribute @s generic.knockback_resistance base set 1
execute if score rng hrd_num matches 3 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 3 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 3 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 3 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 3 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 4 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:regeneration 180 1
execute if score rng hrd_num matches 5 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:fire_resistance 180 0 true
execute if score rng hrd_num matches 6 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:strength 180 1 true
execute if score rng hrd_num matches 7 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:speed 180 1 true
execute if score rng hrd_num matches 8 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:invisibility 180 0
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty