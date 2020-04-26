scoreboard players set amount hrd_num 6
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s minecraft:generic.max_health base set 60
execute if score rng hrd_num matches 0 run data modify entity @s Health set value 60
execute if score rng hrd_num matches 1 run attribute @s generic.movement_speed base set 0.5
execute if score rng hrd_num matches 2 run attribute @s generic.knockback_resistance base set 1
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[0]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[0] set value {id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s}]}}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[1]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[1] set value {id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s}]}}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[2]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[2] set value {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s}]}}
execute if score rng hrd_num matches 3 store result score filled hrd_num run data get entity @s ArmorItems[3]
execute if score rng hrd_num matches 3 unless score filled hrd_num > zero hrd_num run data modify entity @s ArmorItems[3] set value {id:"minecraft:chainmail_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s}]}}
execute if score rng hrd_num matches 4 run enchant @s minecraft:power 5
execute if score rng hrd_num matches 4 run enchant @s minecraft:punch 2
execute if score rng hrd_num matches 4 run enchant @s minecraft:flame 1
execute if score rng hrd_num matches 5 run summon blaze ~ ~ ~ {DeathLootTable:"harder:empty",Tags:["doNotMakeHarder"]}
execute if score rng hrd_num matches 5 run summon blaze ~ ~ ~ {DeathLootTable:"harder:empty",Tags:["doNotMakeHarder"]}
execute if score rng hrd_num matches 5 run summon blaze ~ ~ ~ {DeathLootTable:"harder:empty",Tags:["doNotMakeHarder"]}
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty