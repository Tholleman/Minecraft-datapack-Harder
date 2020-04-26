scoreboard players set amount hrd_num 10
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run attribute @s minecraft:generic.max_health base set 40
execute if score rng hrd_num matches 1 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 2 run attribute @s generic.movement_speed base set 0.4
execute if score rng hrd_num matches 3 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 4 unless entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 4 unless entity @p[distance=..24] run summon minecraft:witch
execute if score rng hrd_num matches 5..9 as @a[distance=..32] at @s run playsound minecraft:entity.witch.celebrate hostile @s ~ ~ ~ 1 1
execute if score rng hrd_num matches 5 run effect give @a[distance=..32] minecraft:mining_fatigue 10 0 true
execute if score rng hrd_num matches 6 run effect give @a[distance=..32] minecraft:weakness 10 0 true
execute if score rng hrd_num matches 7 run effect give @a[distance=..32] minecraft:slowness 10 0 true
execute if score rng hrd_num matches 8 run effect give @a[distance=..32] minecraft:nausea 10 0 true
execute if score rng hrd_num matches 9 run effect give @a[distance=..32] minecraft:blindness 10 0 true
execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/witch_low
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty