scoreboard players set amount hrd_num 10
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 60
execute if score rng hrd_num matches 6 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.5
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 0 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 0 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 0 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 0 if entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 1 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:strength 180 1 true
execute if score rng hrd_num matches 2 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:fire_resistance 180 0
execute if score rng hrd_num matches 3 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:speed 180 1 true
execute if score rng hrd_num matches 4 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:regeneration 180 1
execute if score rng hrd_num matches 5 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:invisibility 180 0
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num