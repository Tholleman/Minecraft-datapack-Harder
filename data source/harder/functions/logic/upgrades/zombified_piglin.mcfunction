\var amount 100
\clevel 2
\var amount 4
\file setup/rng_setup.mctemplate

/execute 
	if <<step>> 0 
	as @e[type=minecraft:zombified_piglin,distance=..16] 
	run data modify entity @s Anger set value 400s

\file setup/rng_teardown.mctemplate
