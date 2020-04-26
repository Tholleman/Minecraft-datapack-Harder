# 1/100 to suddenly anger the zombified piglins
\var amount 100
\if <<DEV>>
\var amount 4
\file setup/rng_setup.mctemplate

/execute 
	if <<step>> 0 
	as @e[type=minecraft:zombified_piglin,distance=..16] 
	run data modify entity @s Anger set value 400s

\file setup/rng_teardown.mctemplate
