\var amount 5
\file setup/rng_setup.mctemplate

/execute if <<step>> 0..2 run summon minecraft:endermite ~ ~ ~ {
	ActiveEffects:[
		{Id:11b,Amplifier:10b,Duration:200,ShowParticles:0b}
	]
}

/execute if <<step>> 3 run summon minecraft:phantom ~ ~ ~
/execute if <<step>> 3 run spreadplayers ~ ~ 1 1 false @e[type=minecraft:phantom,limit=1,sort=nearest]

/execute if <<step>> 4 run attribute @s minecraft:generic.max_health base set 40
/execute if <<step>> 4 run data modify entity @s Health set value 40

\file setup/rng_teardown.mctemplate
