\file util/shortcuts.mctemplate
\var fast 0.3
\var health 50
\var amount 6
\file setup/setup_attributes.mctemplate

\var armorData 
	Count:1b,
	tag:{
		display:{color:0},
		HideFlags:63,
		Enchantments:[
			{id:"minecraft:protection",lvl:4s},
			{id:"minecraft:thorns",lvl:3s},
			{id:"minecraft:binding_curse",lvl:1s}
		]
	}

\var currentStep 0
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_boots",
	<<armorData>>
}

\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_leggings",
	<<armorData>>
}

\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_chestplate",
	<<armorData>>
}

\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_helmet",
	<<armorData>>
}

/execute if <<step>> 1 run enchant @s minecraft:sharpness 5

/execute if <<step>> 2 run enchant @s minecraft:fire_aspect 2

/execute if <<step>> 3 run enchant @s minecraft:knockback 2

\repeat 3
/execute if <<step>> 4 run summon minecraft:wither_skeleton ~ ~ ~

/execute if <<step>> 5 run data modify entity @s CanPickUpLoot set value 1b

\file setup/rng_teardown.mctemplate
