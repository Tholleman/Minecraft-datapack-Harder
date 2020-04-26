\var amount 12
\file setup/rng_setup.mctemplate

# Always give a piglin a golden sword if they don't have a weapon yet
/execute <<checkFilled>> HandItems[0]
/execute unless <<isFilled>> run data modify entity @s HandItems[0] set value {id:"minecraft:golden_sword",Count:1b}

# 25% of growing up
/execute 
	if <<step>> 0..<<<<amount>> / 4>> 
	if entity @s[nbt={IsBaby:1b}] 
	run data remove entity @s IsBaby

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 1 run data modify entity @s Health set value 40

/execute if <<step>> 2 run attribute @s generic.knockback_resistance base set 0.6

/execute if <<step>> 3 run enchant @s minecraft:quick_charge 3
/execute if <<step>> 3 run enchant @s minecraft:fire_aspect 2

/execute if <<step>> 4 run enchant @s minecraft:piercing 4
/execute if <<step>> 4 run enchant @s minecraft:sharpness 5

/execute if <<step>> 5 run enchant @s minecraft:multishot 1
/execute if <<step>> 5 run enchant @s minecraft:knockback 2

/execute 
	if <<step>> 6 
	unless entity @s[nbt={IsBaby:1b}] 
	as @e[type=piglin,distance=0.1..8,limit=1] 
	at @s unless entity @s[nbt={IsBaby:1b}] 
	run summon minecraft:piglin ~ ~ ~ {IsBaby:1b}

/execute if <<step>> 7 run attribute @s generic.movement_speed base set 0.4

\var currentStep 8
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_boots",Count:1b}

\var currentStep 9
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_leggings",Count:1b}

\var currentStep 10
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_chestplate",Count:1b}

\var currentStep 11
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_helmet",Count:1b}

\file setup/rng_teardown.mctemplate
