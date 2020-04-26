scoreboard players set amount hrd_num 4
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0..2 run attribute @s generic.knockback_resistance base set 1
execute if score rng hrd_num matches 3 run summon minecraft:ravager ~ ~ ~ {Passengers:[{id:"minecraft:evoker"}]}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty