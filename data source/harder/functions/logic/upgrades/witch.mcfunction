\var amount 10
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 1 run data modify entity @s Health set value 40

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.4

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 0.6

\repeat 2
/execute if <<step>> 4 unless entity @p[distance=..24] run summon minecraft:witch

/execute if <<step>> 5..9 as @a[distance=..32] at @s run playsound minecraft:entity.witch.celebrate hostile @s ~ ~ ~ 1 1
/execute if <<step>> 5 run effect give @a[distance=..32] minecraft:mining_fatigue 10 0 true
/execute if <<step>> 6 run effect give @a[distance=..32] minecraft:weakness 10 0 true
/execute if <<step>> 7 run effect give @a[distance=..32] minecraft:slowness 10 0 true
/execute if <<step>> 8 run effect give @a[distance=..32] minecraft:nausea 10 0 true
/execute if <<step>> 9 run effect give @a[distance=..32] minecraft:blindness 10 0 true

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/witch_low

\file setup/rng_teardown.mctemplate
