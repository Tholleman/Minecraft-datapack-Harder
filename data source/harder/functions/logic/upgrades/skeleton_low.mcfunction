\var amount 6
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 0 run data modify entity @s Health set value 60

/execute if <<step>> 1 run attribute @s generic.movement_speed base set 0.5

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 1

\var armorData 
	Count:1b,
	tag:{Enchantments:[
		{id:"minecraft:projectile_protection",lvl:4s},
		{id:"minecraft:thorns",lvl:3s}
	]}

\var currentStep 3
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

/execute if <<step>> 4 run enchant @s minecraft:power 5
/execute if <<step>> 4 run enchant @s minecraft:punch 2
/execute if <<step>> 4 run enchant @s minecraft:flame 1

\repeat 3
/execute if <<step>> 5 run summon blaze ~ ~ ~ {
	DeathLootTable:"<<ns>>:empty",
	Tags:["<<tagDoNotUpgrade>>"]
}

\file setup/rng_teardown.mctemplate
