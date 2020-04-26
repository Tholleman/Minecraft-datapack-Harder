\var amount 13
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 1 run data modify entity @s Health set value 40

\var currentStep 2
\var slot HandItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:totem_of_undying",Count:1b}

/execute if <<step>> 3 run attribute @s generic.movement_speed base set 0.3

/execute if <<step>> 4 run attribute @s generic.knockback_resistance base set 0.6

/execute if <<step>> 5 run data modify entity @s IsBaby set value 1

\repeat 5
/execute if <<step>> 6 run summon minecraft:zombie_villager ~ ~ ~

/execute if <<step>> 7 run attribute @s minecraft:zombie.spawn_reinforcements base set 0.8

\var currentStep 8
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

\var currentStep 9
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

\var currentStep 10
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

\var currentStep 11
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

\var currentStep 12
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

/execute if entity @s[y=0,dy=16] run function <<ns>>:logic/upgrades/zombie_villager_low

\file setup/rng_teardown.mctemplate
