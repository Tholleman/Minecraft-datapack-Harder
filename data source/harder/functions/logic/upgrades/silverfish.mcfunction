\var amount 16
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 20
/execute if <<step>> 1 run data modify entity @s Health set value 20

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 0.6

\repeat 2
/execute if <<step>> 4 unless entity @p[distance=..24] run summon minecraft:silverfish

/execute if <<step>> 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 5..8 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 9..11 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 12..13 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone replace minecraft:stone
/execute if <<step>> 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cobblestone replace minecraft:cobblestone
/execute if <<step>> 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_mossy_stone_bricks replace minecraft:mossy_stone_bricks
/execute if <<step>> 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_cracked_stone_bricks replace minecraft:cracked_stone_bricks
/execute if <<step>> 14 run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:infested_chiseled_stone_bricks replace minecraft:chiseled_stone_bricks

/execute if <<step>> 15 run effect give @s minecraft:poison 60 1 false

\file setup/rng_teardown.mctemplate
