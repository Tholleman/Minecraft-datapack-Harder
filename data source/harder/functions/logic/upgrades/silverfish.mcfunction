\var fast 0.3
\var health 20
\var amount 11
\file setup/setup_attributes.mctemplate

\repeat 2
/execute if <<step>> 0 unless entity @p[distance=..24] run summon minecraft:silverfish

/execute if <<step>> 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 1..4 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 5..7 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 8..9 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 10 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

\file setup/rng_teardown.mctemplate
