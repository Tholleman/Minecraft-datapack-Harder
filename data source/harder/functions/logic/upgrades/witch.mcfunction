\file util/shortcuts.mctemplate
\var fast 0.4
\var health 40
\var amount 6
\file setup/setup_attributes.mctemplate

\repeat 2
/execute if <<step>> 0 unless entity @p[distance=..24] run summon minecraft:witch

/execute if <<step>> 1..5 as @a[distance=..32] at @s run playsound minecraft:entity.witch.celebrate hostile @s ~ ~ ~ 1 1
/execute if <<step>> 1 run effect give @a[distance=..32] minecraft:blindness 10 0 true
/execute if <<step>> 2 run effect give @a[distance=..32] minecraft:mining_fatigue 10 0 true
/execute if <<step>> 3 run effect give @a[distance=..32] minecraft:nausea 10 0 true
/execute if <<step>> 4 run effect give @a[distance=..32] minecraft:slowness 10 0 true
/execute if <<step>> 5 run effect give @a[distance=..32] minecraft:weakness 10 0 true

/execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/witch_low

\file setup/rng_teardown.mctemplate
