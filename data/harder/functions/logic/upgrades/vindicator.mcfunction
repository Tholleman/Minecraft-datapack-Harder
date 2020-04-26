scoreboard players set amount hrd_num 7
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0..1 store result score filled hrd_num run data get entity @s HandItems[1]
execute if score rng hrd_num matches 0..1 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[1] set value {id:"minecraft:totem_of_undying",Count:1b}
execute if score rng hrd_num matches 2..3 run enchant @s minecraft:sharpness 5
execute if score rng hrd_num matches 4..5 run summon minecraft:vindicator ~ ~ ~
execute if score rng hrd_num matches 6 run summon minecraft:ravager ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty