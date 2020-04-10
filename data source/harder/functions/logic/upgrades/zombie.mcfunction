\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 10
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if <<step>> 0 run summon minecraft:zombie ~ ~ ~

/execute if <<step>> 1 run data modify entity @s IsBaby set value 1

\var currentStep 2
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_boots",Count:1b}

\var currentStep 3
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_leggings",Count:1b}

\var currentStep 4
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_chestplate",Count:1b}

\var currentStep 5
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_helmet",Count:1b}

\var currentStep 6
\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_axe",Count:1b}

\var currentStep 7
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

/execute if <<step>> 8 run data modify entity @s Attributes[{Name:zombie.spawnReinforcements}].Base set value 1

/execute if <<step>> 9 run data modify entity @s CanPickUpLoot set value 1b

/execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/zombie_low

\file setup/rng_teardown.mctemplate
