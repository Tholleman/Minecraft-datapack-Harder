\file util/shortcuts.mctemplate
\var fast 0.35
\var health 40
\var amount 3
\file setup/setup_attributes.mctemplate

\var currentStep 0
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

/execute if <<step>> 1 run enchant @s minecraft:power 5

/execute if <<step>> 2 run enchant @s minecraft:punch 2

\file setup/rng_teardown.mctemplate
