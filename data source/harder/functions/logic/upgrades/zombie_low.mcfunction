\var amount 5
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 0 run data modify entity @s Health set value 60

/execute if <<step>> 1 run attribute @s generic.movement_speed base set 0.4

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 1

\var currentStep 3
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

\repeat 5
/execute if score rng hrd_num matches 4 run summon minecraft:zombie ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}