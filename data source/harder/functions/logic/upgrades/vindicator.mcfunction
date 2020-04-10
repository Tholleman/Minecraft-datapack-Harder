\file util/shortcuts.mctemplate
\var fast 0.5
\var health 40
\var amount 7
\file setup/setup_attributes.mctemplate

\var currentStep 0..1
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

/execute if <<step>> 2..3 run enchant @s minecraft:sharpness 5

/execute if <<step>> 4..5 run summon minecraft:vindicator ~ ~ ~

/execute if <<step>> 6 run summon minecraft:ravager ~ ~ ~

\file setup/rng_teardown.mctemplate
