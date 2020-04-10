\file util/shortcuts.mctemplate
\var fast 0.35
\var health 60
\var amount 2
\file setup/setup_attributes.mctemplate

\repeat 5
/execute if score rng hrd_num matches 0 run summon minecraft:zombie_villager ~ ~ ~ {Attributes:[{Name:zombie.spawnReinforcements,Base:1}]}

\var currentStep 1
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:iron_boots",
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

\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:iron_leggings",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s},
		{id:"minecraft:thorns",lvl:3s},
		{id:"minecraft:unbreaking",lvl:3s},
		{id:"minecraft:mending",lvl:1s},
		{id:"minecraft:binding_curse",lvl:1s}
	]}
}

\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:iron_chestplate",
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:protection",lvl:4s},
		{id:"minecraft:thorns",lvl:3s},
		{id:"minecraft:unbreaking",lvl:3s},
		{id:"minecraft:mending",lvl:1s},
		{id:"minecraft:binding_curse",lvl:1s}
	]}
}

\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:iron_helmet",
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

\var slot HandItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {
	id:"minecraft:iron_sword",
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

\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}


\file setup/rng_teardown.mctemplate
