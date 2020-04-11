\var fast 0.35
\var health 200
\var amount 4
\file setup/setup_attributes.mctemplate

/execute if score rng hrd_num matches 0..2 run data modify entity @s Attributes[{Name:generic.knockback_resistance}].Base set value 1
/execute if score rng hrd_num matches 3 run summon minecraft:ravager ~ ~ ~ {Passengers:[{id:"minecraft:evoker"}]}

\file setup/rng_teardown.mctemplate
