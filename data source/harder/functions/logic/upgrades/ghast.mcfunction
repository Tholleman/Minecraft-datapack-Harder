\file ../../config.txt
/summon minecraft:stray ~ ~ ~ {
	HandItems:[
	{
		id:"minecraft:bow",
		Count:1b,
		tag:{Enchantments:[
			{id:"minecraft:power",lvl:5s},
			{id:"minecraft:punch",lvl:5s},
			{id:"minecraft:flame",lvl:1s}
		]}
	},
	{}
	],
	HandDropChances:[0F,0F],
	
	FallFlying:1b,
	ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{}],
	ArmorDropChances:[0F,0F,0F,0F],
	
	ActiveEffects:[
		{Id:28b,Amplifier:0b,Duration:20000000,ShowParticles:0b},
		{Id:25b,Amplifier:0b,Duration:20000000,ShowParticles:0b}
	],
	
	Tags:["<<tagDoNotUpgrade>>"]
}
