scoreboard players set amount hrd_num 10
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.maxHealth}].Base set value 40
execute if score rng hrd_num matches 6 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.knockbackResistance}].Base set value 0.6
execute if score rng hrd_num matches 8 run data modify entity @s Attributes[{Name:generic.movementSpeed}].Base set value 0.4
execute if score rng hrd_num matches 9 run data modify entity @s Attributes[{Name:generic.followRange}].Base set value 2048
execute if score rng hrd_num matches 0 unless entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 0 unless entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 1..5 as @a[distance=..32] at @s run playsound minecraft:entity.witch.celebrate hostile @s ~ ~ ~ 1 1
execute if score rng hrd_num matches 1 run effect give @a[distance=..32] minecraft:blindness 10 0 true
execute if score rng hrd_num matches 2 run effect give @a[distance=..32] minecraft:mining_fatigue 10 0 true
execute if score rng hrd_num matches 3 run effect give @a[distance=..32] minecraft:nausea 10 0 true
execute if score rng hrd_num matches 4 run effect give @a[distance=..32] minecraft:slowness 10 0 true
execute if score rng hrd_num matches 5 run effect give @a[distance=..32] minecraft:weakness 10 0 true
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/witch_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num