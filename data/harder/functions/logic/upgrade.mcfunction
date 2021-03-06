execute as @e[type=#harder:upgraders,gamemode=!creative,gamemode=!spectator] at @s run tag @e[type=#harder:upgradable,distance=..128,limit=1,sort=random] add makeHarder
execute as @e[type=#harder:village_upgraders] at @s run tag @e[type=#harder:village_upgradable,distance=24..128,limit=1,sort=random] add makeHarder
execute as @e[tag=makeHarder,tag=doNotMakeHarder] run tag @s remove makeHarder
execute as @e[tag=makeHarder,type=!#harder:no_range_limit] at @s if entity @p[distance=..24,gamemode=!creative,gamemode=!spectator] run tag @s remove makeHarder
tag @e[tag=makeHarder,nbt={PersistenceRequired:1b}] remove makeHarder
execute as @e[tag=makeHarder,type=minecraft:blaze] at @s run function harder:logic/upgrades/blaze
execute as @e[tag=makeHarder,type=minecraft:cave_spider] at @s run function harder:logic/upgrades/cave_spider
execute as @e[tag=makeHarder,type=minecraft:creeper] at @s run function harder:logic/upgrades/creeper
execute as @e[tag=makeHarder,type=minecraft:drowned] at @s run function harder:logic/upgrades/drowned
execute as @e[tag=makeHarder,type=minecraft:evoker] at @s run function harder:logic/upgrades/evoker
execute as @e[tag=makeHarder,type=minecraft:ghast] at @s run function harder:logic/upgrades/ghast
execute as @e[tag=makeHarder,type=minecraft:husk] at @s run function harder:logic/upgrades/husk
execute as @e[tag=makeHarder,type=minecraft:magma_cube] at @s run function harder:logic/upgrades/magma_cube
execute as @e[tag=makeHarder,type=minecraft:pillager] at @s run function harder:logic/upgrades/pillager
execute as @e[tag=makeHarder,type=minecraft:ravager] at @s run function harder:logic/upgrades/ravager
execute as @e[tag=makeHarder,type=minecraft:shulker] at @s run function harder:logic/upgrades/shulker
execute as @e[tag=makeHarder,type=minecraft:skeleton] at @s run function harder:logic/upgrades/skeleton
execute as @e[tag=makeHarder,type=minecraft:slime] at @s run function harder:logic/upgrades/slime
execute as @e[tag=makeHarder,type=minecraft:stray] at @s run function harder:logic/upgrades/stray
execute as @e[tag=makeHarder,type=minecraft:spider] at @s run function harder:logic/upgrades/spider
execute as @e[tag=makeHarder,type=minecraft:vindicator] at @s run function harder:logic/upgrades/vindicator
execute as @e[tag=makeHarder,type=minecraft:witch] at @s run function harder:logic/upgrades/witch
execute as @e[tag=makeHarder,type=minecraft:wither_skeleton] at @s run function harder:logic/upgrades/wither_skeleton
execute as @e[tag=makeHarder,type=minecraft:zombie] at @s run function harder:logic/upgrades/zombie
execute as @e[tag=makeHarder,type=minecraft:zombie_villager] at @s run function harder:logic/upgrades/zombie_villager
tag @e[tag=makeHarder] remove makeHarder
schedule function harder:logic/upgrade 30s