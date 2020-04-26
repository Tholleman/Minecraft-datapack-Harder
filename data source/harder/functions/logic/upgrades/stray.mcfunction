\var amount 7
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 1 run data modify entity @s Health set value 40

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.35

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 0.6

\var currentStep 4
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_boots",Count:1b}

\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_leggings",Count:1b}

\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_chestplate",Count:1b}

\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_helmet",Count:1b}

/execute if <<step>> 5 run enchant @s minecraft:power 5

/execute if <<step>> 6 run enchant @s minecraft:punch 2

\file setup/rng_teardown.mctemplate
