\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 5
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if <<step>> 0 run summon minecraft:husk ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:0.6}]}

\var currentStep 1
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_boots",Count:1b}
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_leggings",Count:1b}
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_chestplate",Count:1b}
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_helmet",Count:1b}
\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_axe",Count:1b}

/execute if <<step>> 2 run data modify entity @s Attributes[{Name:zombie.spawn_reinforcements}].Base set value 1

\var currentStep 3
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

/execute if <<step>> 4 run data modify entity @s CanPickUpLoot set value 1b

\file setup/rng_teardown.mctemplate
