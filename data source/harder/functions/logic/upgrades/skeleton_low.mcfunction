\file ../../config.txt
\file util/shortcuts.mctemplate
\var fast 0.5
\var health 60
\var amount 3
\file setup/setup_attributes.mctemplate

\var armorData 
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s},
		{id:"minecraft:thorns",lvl:3s}
	]}

\var currentStep 0
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_boots",<<armorData>>}

\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_leggings",<<armorData>>}

\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_chestplate",<<armorData>>}

\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:chainmail_helmet",<<armorData>>}

/execute if <<step>> 1 run enchant @s minecraft:power 5
/execute if <<step>> 1 run enchant @s minecraft:punch 2
/execute if <<step>> 1 run enchant @s minecraft:flame 1

\repeat 3
/execute if <<step>> 2 run summon blaze ~ ~ ~ {
	DeathLootTable:"harder:empty",
	Tags:["<<tagDoNotUpgrade>>"]
}

\file setup/rng_teardown.mctemplate
