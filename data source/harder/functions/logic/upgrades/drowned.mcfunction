\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 9
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if <<step>> 0 run summon minecraft:drowned ~ ~ ~

/execute if <<step>> 1 run data modify entity @s IsBaby set value 1

\var currentStep 2
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:chainmail_boots",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s}
	]}
}

\var currentStep 3
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:chainmail_leggings",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:frost_walker",lvl:2},
		{id:"minecraft:projectile_protection",lvl:4s}
	]}
}

\var currentStep 4
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:chainmail_chestplate",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s}
	]}
}

\var currentStep 5
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:chainmail_helmet",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s}
	]}
}

\var currentStep 6
\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:trident",Count:1b}

/execute if <<step>> 7 run data modify entity @s Attributes[{Name:zombie.spawn_reinforcements}].Base set value 1

/execute if <<step>> 8 run data modify entity @s CanPickUpLoot set value 1b

\file setup/rng_teardown.mctemplate
