\var fast 0.35
\var health 40
\var amount 8
\file setup/setup_attributes.mctemplate

\var currentStep 0
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_boots",Count:1b}

\var currentStep 1
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_leggings",Count:1b}

\var currentStep 2
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_chestplate",Count:1b}

\var currentStep 3
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_helmet",Count:1b}

/execute if <<step>> 4 run enchant @s minecraft:power 5

/execute if <<step>> 5 run enchant @s minecraft:punch 2

/execute if <<step>> 6 run enchant @s minecraft:flame 1

/execute if <<step>> 7 run data modify entity @s CanPickUpLoot set value 1b

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/skeleton_low

\file setup/rng_teardown.mctemplate
