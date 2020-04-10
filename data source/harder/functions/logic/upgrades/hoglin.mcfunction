\file util/shortcuts.mctemplate
\var fast 0.5
\var health 60
\var amount 10
\file setup/setup_attributes.mctemplate

# 20% for hoglins to procreate
\var chance 5
\clevel 2
\var chance 1
/execute 
	if <<step>> 0..<<<<amount>> / <<chance>>>> 
	as @e[type=minecraft:hoglin,distance=..16,limit=2] 
	run data modify entity @s InLove set value 400

\file setup/rng_teardown.mctemplate
