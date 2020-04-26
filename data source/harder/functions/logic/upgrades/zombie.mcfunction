\var amount 14
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run data modify entity @s CanPickUpLoot set value 1b

/execute if <<step>> 2 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 2 run data modify entity @s Health set value 40

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

\repeat 5
/execute if <<step>> 5 run summon minecraft:zombie ~ ~ ~

/execute if <<step>> 6 run data modify entity @s IsBaby set value 1

\var currentStep 7
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

\var currentStep 8
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_boots",Count:1b}

\var currentStep 9
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_leggings",Count:1b}

\var currentStep 10
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_chestplate",Count:1b}

\var currentStep 11
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_helmet",Count:1b}

\var currentStep 12
\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:iron_axe",Count:1b}

/execute if <<step>> 13 run attribute @s minecraft:zombie.spawn_reinforcements base set 1

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/zombie_low

\file setup/rng_teardown.mctemplate
