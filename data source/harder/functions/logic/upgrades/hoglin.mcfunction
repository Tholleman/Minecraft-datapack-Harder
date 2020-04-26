\var amount 10
\file setup/rng_setup.mctemplate

/execute if <<step>> 0 run attribute @s generic.follow_range base set 2048

/execute if <<step>> 1 run attribute @s minecraft:generic.max_health base set 60
/execute if <<step>> 1 run data modify entity @s Health set value 60

/execute if <<step>> 2 run attribute @s generic.movement_speed base set 0.5

/execute if <<step>> 3 run attribute @s generic.knockback_resistance base set 0.6

# 20% for hoglins to procreate
\var chance 5
\if <<DEV>>
\var chance 1
/execute 
	if <<step>> 0..<<<<amount>> / <<chance>>>> 
	as @e[type=minecraft:hoglin,distance=..16,limit=2] 
	run data modify entity @s InLove set value 400

\file setup/rng_teardown.mctemplate
