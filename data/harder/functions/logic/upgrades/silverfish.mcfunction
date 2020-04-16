scoreboard players set amount hrd_num 15
execute store result score rng hrd_num run loot spawn ~ ~ ~ loot harder:rng
scoreboard players operation rng hrd_num %= amount hrd_num
execute if score rng hrd_num matches 11 run data modify entity @s Attributes[{Name:generic.max_health}].Base set value 20
execute if score rng hrd_num matches 11 run data modify entity @s Health set value 20
execute if score rng hrd_num matches 12 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 0.6
execute if score rng hrd_num matches 13 run data modify entity @s Attributes[{Name:generic.movement_speed}].Base set value 0.3
execute if score rng hrd_num matches 14 run data modify entity @s Attributes[{Name:generic.follow_range}].Base set value 2048
execute if score rng hrd_num matches 0 unless entity @p[distance=..24] run summon minecraft:silverfish
execute if score rng hrd_num matches 0 unless entity @p[distance=..24] run summon minecraft:silverfish
execute if score rng hrd_num matches 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
execute if score rng hrd_num matches 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone replace minecraft:stone
execute if score rng hrd_num matches 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
execute if score rng hrd_num matches 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng hrd_num matches 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
execute if score rng hrd_num matches 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
execute if score rng hrd_num matches 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks
scoreboard players reset rng hrd_num
scoreboard players reset amount hrd_num