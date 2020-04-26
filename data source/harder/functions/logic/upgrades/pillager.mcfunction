\var amount 11
\file setup/rng_setup.mctemplate

\var currentStep 0..1
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

\var currentStep 2..3
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> <<raidFireworks>>

/execute if <<step>> 4..5 run enchant @s minecraft:quick_charge 3

/execute if <<step>> 6..7 run enchant @s minecraft:piercing 4

/execute if <<step>> 8..9 run summon minecraft:pillager ~ ~ ~

/execute if <<step>> 10 run summon minecraft:vindicator ~ ~ ~

\file setup/rng_teardown.mctemplate
