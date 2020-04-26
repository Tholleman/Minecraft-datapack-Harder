scoreboard players set amount hrd_num 11
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0..1 store result score filled hrd_num run data get entity @s HandItems[1]
execute if score rng hrd_num matches 0..1 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[1] set value {id:"minecraft:totem_of_undying",Count:1b}
execute if score rng hrd_num matches 2..3 store result score filled hrd_num run data get entity @s HandItems[1]
execute if score rng hrd_num matches 2..3 unless score filled hrd_num > zero hrd_num run data modify entity @s HandItems[1] set value {id:"minecraft:firework_rocket",Count:4b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4,Colors:[I;16633688,15891724,8390921,15761171]}]}}}
execute if score rng hrd_num matches 4..5 run enchant @s minecraft:quick_charge 3
execute if score rng hrd_num matches 6..7 run enchant @s minecraft:piercing 4
execute if score rng hrd_num matches 8..9 run summon minecraft:pillager ~ ~ ~
execute if score rng hrd_num matches 10 run summon minecraft:vindicator ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty