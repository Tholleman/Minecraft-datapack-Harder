scoreboard players set amount hrd_num 6
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.movement_speed base set 0.5
execute if score rng hrd_num matches 1 run attribute @s generic.knockback_resistance base set 1
execute if score rng hrd_num matches 2 run data modify entity @s Size set value 5
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:3}
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:3}
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:3}
execute if score rng hrd_num matches 3 at @s run summon minecraft:slime ~ ~ ~ {Size:3}
execute if score rng hrd_num matches 4 run summon minecraft:magma_cube ~ ~ ~ {Size:3,DeathLootTable:"harder:empty",Tags:["doNotMakeHarder"]}
execute if score rng hrd_num matches 4 run summon minecraft:magma_cube ~ ~ ~ {Size:3,DeathLootTable:"harder:empty",Tags:["doNotMakeHarder"]}
execute if score rng hrd_num matches 5 run effect give @s minecraft:invisibility 1000000 0