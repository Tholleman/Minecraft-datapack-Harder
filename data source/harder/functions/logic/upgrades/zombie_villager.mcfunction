\file util/shortcuts.mctemplate
\var fast 0.3
\var health 40
\var amount 9
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if <<step>> 0 run summon minecraft:zombie_villager ~ ~ ~

/execute if <<step>> 1 run data modify entity @s IsBaby set value 1

\var currentStep 2
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_boots",
	Count:1b,
	tag:{Enchantments:[
			{id:"minecraft:fire_protection",lvl:4s},
			{id:"minecraft:feather_falling",lvl:4s},
			{id:"minecraft:thorns",lvl:3s},
			{id:"minecraft:depth_strider",lvl:3s},
			{id:"minecraft:unbreaking",lvl:3s},
			{id:"minecraft:mending",lvl:1s},
			{id:"minecraft:binding_curse",lvl:1s}
	]}
}

\var currentStep 3
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_leggings",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s},
		{id:"minecraft:thorns",lvl:3s},
		{id:"minecraft:unbreaking",lvl:3s},
		{id:"minecraft:mending",lvl:1s},
		{id:"minecraft:binding_curse",lvl:1s}
	]}
}

\var currentStep 4
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_chestplate",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:protection",lvl:4s},
		{id:"minecraft:thorns",lvl:3s},
		{id:"minecraft:unbreaking",lvl:3s},
		{id:"minecraft:mending",lvl:1s},
		{id:"minecraft:binding_curse",lvl:1s}
	]}
}

\var currentStep 5
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:leather_helmet",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:blast_protection",lvl:4s},
		{id:"minecraft:respiration",lvl:3s},
		{id:"minecraft:aqua_affinity",lvl:1s},
		{id:"minecraft:thorns",lvl:3s},
		{id:"minecraft:unbreaking",lvl:3s},
		{id:"minecraft:mending",lvl:1s},
		{id:"minecraft:binding_curse",lvl:1s}
	]}
}

\var currentStep 6
\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:wooden_sword",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:sharpness",lvl:5s},
		{id:"minecraft:fire_aspect",lvl:2s},
		{id:"minecraft:looting",lvl:3s},
		{id:"minecraft:sweeping",lvl:3s},
		{id:"minecraft:unbreaking",lvl:3s},
		{id:"minecraft:mending",lvl:1s}
	]}
}

\var currentStep 7
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

/execute if <<step>> 8 run data modify entity @s Attributes[{Name:zombie.spawn_reinforcements}].Base set value 0.8

/execute if entity @s[y=0,dy=16] run function harder:logic/upgrades/zombie_villager_low

\file setup/rng_teardown.mctemplate
