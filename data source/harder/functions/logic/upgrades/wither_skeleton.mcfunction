\var amount 10
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run data modify entity @s CanPickUpLoot set value 1b

/execute if <<step>> 2 run attribute @s minecraft:generic.max_health base set 50
/execute if <<step>> 2 run data modify entity @s Health set value 50

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

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

\var currentStep 5
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

/execute if <<step>> 6 run enchant @s minecraft:knockback 2

/execute if <<step>> 7 run enchant @s minecraft:fire_aspect 2

/execute if <<step>> 8 run enchant @s minecraft:sharpness 5

\repeat 3
/execute if <<step>> 9 run summon minecraft:wither_skeleton ~ ~ ~

\file setup/rng_teardown.mctemplate
