\var amount 5
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 1 run data modify entity @s Health set value 60

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.4

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 1

/execute 
	if <<step>> 4 as @e[
		distance=..24,
		type=#harder:upgradable,
		type=!minecraft:zoglin,
		limit=4
	] 
	run summon minecraft:zoglin ~ ~ ~ {IsBaby:1b}

\file setup/rng_teardown.mctemplate
