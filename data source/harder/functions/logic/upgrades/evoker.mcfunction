\var fast 0.7
\var health 40
\var amount 4
\file setup/setup_attributes.mctemplate

\var pillager minecraft:pillager ~ ~ ~ {
	HandItems:[
		{
			id:"minecraft:crossbow",
			Count:1b,
			tag:{
				Unbreakable:1b,
				Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]
			}
		},
		{}
	],
	HandDropChances:[0F,0.085F]
}

/execute if <<step>> 0..2 run summon <<pillager>>
/execute if <<step>> 1..2 run summon <<pillager>>
/execute if <<step>> 2 run summon <<pillager>>
/execute if <<step>> 3 run summon minecraft:vindicator ~ ~ ~

\file setup/rng_teardown.mctemplate
