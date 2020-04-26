\var amount 5
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 0 run data modify entity @s Health set value 60

/execute if <<step>> 1 run attribute @s generic.movement_speed base set 0.35

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 1

\var currentStep 3
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

\repeat 5
/execute if <<step>> 4 run summon minecraft:zombie_villager ~ ~ ~ {Attributes:[{Name:zombie.spawn_reinforcements,Base:1}]}
