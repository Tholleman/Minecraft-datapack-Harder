scoreboard players set amount hrd_num 16
scoreboard players operation amount hrd_num < @s hrd_difficulty
scoreboard players operation amount hrd_num > one hrd_num
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 0 run attribute @s generic.follow_range base set 2048
execute if score rng hrd_num matches 1 run attribute @s minecraft:generic.max_health base set 20
execute if score rng hrd_num matches 1 run data modify entity @s Health set value 20
execute if score rng hrd_num matches 2 run attribute @s generic.movement_speed base set 0.3
execute if score rng hrd_num matches 3 run attribute @s generic.knockback_resistance base set 0.6
execute if score rng hrd_num matches 4 unless entity @p[distance=..24] run summon minecraft:silverfish
execute if score rng hrd_num matches 4 unless entity @p[distance=..24] run summon minecraft:silverfish
execute if score rng hrd_num matches 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 15 run effect give @s minecraft:poison 60 1 false
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num
scoreboard players reset @s hrd_difficulty