scoreboard players set amount hrd_num 5
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0..2 run summon minecraft:endermite ~ ~ ~ {ActiveEffects:[{Id:11b,Amplifier:10b,Duration:200,ShowParticles:0b}]}
execute if score rng hrd_num matches 3 run summon minecraft:phantom ~ ~ ~
execute if score rng hrd_num matches 3 run spreadplayers ~ ~ 1 1 false @e[type=minecraft:phantom,limit=1,sort=nearest]
execute if score rng hrd_num matches 4 run attribute @s minecraft:generic.max_health base set 40
execute if score rng hrd_num matches 4 run data modify entity @s Health set value 40
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty