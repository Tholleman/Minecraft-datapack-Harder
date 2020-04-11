\var fast 0.4
\var health 40
\var amount 8
\file setup/setup_attributes.mctemplate

/execute <<checkFilled>> HandItems[0]
/execute unless <<isFilled>> run data modify entity @s HandItems[0] set value {id:"minecraft:golden_sword",Count:1b}

# 25% of growing up
/execute 
	if <<step>> 0..<<<<amount>> / 4>> 
	if entity @s[nbt={IsBaby:1b}] 
	run data remove entity @s IsBaby

/execute if <<step>> 0 run enchant @s minecraft:quick_charge 3
/execute if <<step>> 0 run enchant @s minecraft:fire_aspect 2

/execute if <<step>> 1 run enchant @s minecraft:piercing 4
/execute if <<step>> 1 run enchant @s minecraft:sharpness 5

/execute if <<step>> 2 run enchant @s minecraft:multishot 1
/execute if <<step>> 2 run enchant @s minecraft:knockback 2

/execute 
	if <<step>> 3 
	unless entity @s[nbt={IsBaby:1b}] 
	as @e[type=piglin,distance=0.1..8,limit=1] 
	at @s unless entity @s[nbt={IsBaby:1b}] 
	run summon minecraft:piglin ~ ~ ~ {IsBaby:1b}

\var currentStep 4
\var slot ArmorItems[0]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_boots",Count:1b}

\var currentStep 5
\var slot ArmorItems[1]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_leggings",Count:1b}

\var currentStep 6
\var slot ArmorItems[2]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_chestplate",Count:1b}

\var currentStep 7
\var slot ArmorItems[3]
/<<checkFilledCMD>>
/<<setEmptySlotCMD>> {id:"minecraft:golden_helmet",Count:1b}

\file setup/rng_teardown.mctemplate
