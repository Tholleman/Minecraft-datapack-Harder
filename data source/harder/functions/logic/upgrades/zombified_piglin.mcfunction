\var amount 6
\file setup/rng_setup.mctemplate

\var locals @e[type=minecraft:zombified_piglin,distance=..16]

/execute if <<step>> 0 as <<locals>> run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 as <<locals>> run data modify entity @s CanPickUpLoot set value 1b

/execute if <<step>> 2 as <<locals>> run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 2 as <<locals>> run data modify entity @s Health set value 40

/execute if <<step>> 3 as <<locals>> run attribute @s generic.movement_speed base set 0.3d

/execute if <<step>> 4 as <<locals>> run attribute @s generic.knockback_resistance base set 0.6d

/execute if <<step>> 5 as <<locals>> run attribute @s generic.attack_damage base set 8.0d

\file setup/rng_teardown.mctemplate
