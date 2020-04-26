\var amount 9
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run data modify entity @s CanPickUpLoot set value 1b

/execute if <<step>> 2 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 2 run data modify entity @s Health set value 40

\var currentStep 3
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

/execute if <<step>> 4 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 5 run attribute @s generic.knockback_resistance base set 0.6

\var currentStep 6
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

/execute if <<step>> 7 run attribute @s minecraft:zombie.spawn_reinforcements base set 1

\repeat 5
/execute if <<step>> 8 run summon minecraft:husk ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:0.6}]}

\file setup/rng_teardown.mctemplate
