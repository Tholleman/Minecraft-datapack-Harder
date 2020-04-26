\var amount 4
\file setup/rng_setup.mctemplate

/execute if score rng hrd_num matches 0..2 run attribute @s generic.knockback_resistance base set 1
/execute if score rng hrd_num matches 3 run summon minecraft:ravager ~ ~ ~ {Passengers:[{id:"minecraft:evoker"}]}

\file setup/rng_teardown.mctemplate
