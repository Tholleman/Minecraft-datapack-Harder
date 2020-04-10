\file util/shortcuts.mctemplate
\var fast 0.5
\var health 60
\var amount 6
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if <<step>> 0 if entity @p[distance=..24] run summon minecraft:witch

/execute if <<step>> 1 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:strength 180 1 true
/execute if <<step>> 2 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:fire_resistance 180 0
/execute if <<step>> 3 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:speed 180 1 true
/execute if <<step>> 4 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:regeneration 180 1
/execute if <<step>> 5 run effect give @e[type=#harder:upgradable,distance=1..30] minecraft:invisibility 180 0

\file setup/rng_teardown.mctemplate
