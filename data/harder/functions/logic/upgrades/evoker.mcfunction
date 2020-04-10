scoreboard players set amount hrd_num 8
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 4 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 40
execute if score rng hrd_num matches 4 run data modify entity @s Health set value 40
execute if score rng hrd_num matches 5 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 6 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.7
execute if score rng hrd_num matches 7 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0..2 run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}},{}],HandDropChances:[0F,0.085F]}
execute if score rng hrd_num matches 1..2 run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}},{}],HandDropChances:[0F,0.085F]}
execute if score rng hrd_num matches 2 run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}},{}],HandDropChances:[0F,0.085F]}
execute if score rng hrd_num matches 3 run summon minecraft:vindicator ~ ~ ~
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num