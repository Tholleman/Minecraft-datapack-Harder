\var fast 0.4
\var health 60
\var amount 2
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if score rng hrd_num matches 0 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}

\var currentStep 2
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_boots",Count:1b}

\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_leggings",Count:1b}

\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_chestplate",Count:1b}

\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_helmet",Count:1b}

\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_axe",Count:1b}

\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}