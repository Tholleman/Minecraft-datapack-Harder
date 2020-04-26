\var amount 12
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run data modify entity @s CanPickUpLoot set value 1b

/execute if <<step>> 2 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 2 run data modify entity @s Health set value 40

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.35

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

\var currentStep 5
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_boots",Count:1b}

\var currentStep 6
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_leggings",Count:1b}

\var currentStep 7
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_chestplate",Count:1b}

\var currentStep 8
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_helmet",Count:1b}

/execute if <<step>> 9 run enchant @s minecraft:punch 2

/execute if <<step>> 10 run enchant @s minecraft:flame 1

/execute if <<step>> 11 run enchant @s minecraft:power 5

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/skeleton_low

\file setup/rng_teardown.mctemplate
