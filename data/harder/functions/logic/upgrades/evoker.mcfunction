scoreboard players set amount hrd_num 4
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0..2 run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}},{}],HandDropChances:[0F,0.085F]}
execute if score rng hrd_num matches 1..2 run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}},{}],HandDropChances:[0F,0.085F]}
execute if score rng hrd_num matches 2 run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}},{}],HandDropChances:[0F,0.085F]}
execute if score rng hrd_num matches 3 run summon minecraft:vindicator ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty