\var minDistance 24
\var maxDistance 64
\var upgradeAmount 1
\var loopTime 30s
\var upgraderCriteria gamemode=!creative,gamemode=!spectator

\if <<DEV>>
\var loopTime 10s
\if <<DEV>>
\var upgraderCriteria nbt={}
\if <<DEV>>
\var minDistance 0
\if <<DEV>>
\var maxDistance 24

/scoreboard players add @a[<<upgraderCriteria>>] hrd_progress 1
# Increase the difficulty every 1/2 day
/scoreboard players add @a[scores={hrd_progress=20..,hrd_difficulty=..99}] hrd_difficulty 1
/scoreboard players set @a[scores={hrd_progress=20..}] hrd_progress 0

/execute 
	as @e[type=#<<ns>>:upgraders,<<upgraderCriteria>>] 
	at @s 
	run tag @e[
		type=#<<ns>>:upgradable,
		distance=..<<maxDistance>>,
		limit=<<upgradeAmount>>,
		sort=random
	] add <<tagUpgradeMe>>

/execute 
	as @e[type=#<<ns>>:village_upgraders] 
	at @s 
	run tag @e[
		type=#<<ns>>:village_upgradable,
		distance=<<minDistance>>..<<maxDistance>>,
		limit=<<upgradeAmount>>,
		sort=random
	] 
	add <<tagUpgradeMe>>

/execute 
	as @e[tag=<<tagUpgradeMe>>,tag=<<tagDoNotUpgrade>>] 
	run tag @s remove <<tagUpgradeMe>>

/execute 
	as @e[
		tag=<<tagUpgradeMe>>,
		type=!#<<ns>>:no_range_limit
	] 
	at @s 
	if entity @p[distance=..<<minDistance>>,<<upgraderCriteria>>] 
	run tag @s remove <<tagUpgradeMe>>

/tag @e[
		tag=<<tagUpgradeMe>>,
		nbt={PersistenceRequired:1b}
	] remove <<tagUpgradeMe>>

/execute 
	as @e[tag=<<tagUpgradeMe>>] 
	at @s 
	run scoreboard players operation @s hrd_difficulty = @p hrd_difficulty

\if <<DEV>>
/tellraw @a "upgrading"

/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:blaze] at @s run function <<ns>>:logic/upgrades/blaze
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:cave_spider] at @s run function <<ns>>:logic/upgrades/cave_spider
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:creeper] at @s run function <<ns>>:logic/upgrades/creeper
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:drowned] at @s run function <<ns>>:logic/upgrades/drowned
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:evoker] at @s run function <<ns>>:logic/upgrades/evoker
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:ghast] at @s run function <<ns>>:logic/upgrades/ghast
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:hoglin] at @s run function <<ns>>:logic/upgrades/hoglin
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:husk] at @s run function <<ns>>:logic/upgrades/husk
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:magma_cube] at @s run function <<ns>>:logic/upgrades/magma_cube
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:piglin] at @s run function <<ns>>:logic/upgrades/piglin
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:pillager] at @s run function <<ns>>:logic/upgrades/pillager
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:ravager] at @s run function <<ns>>:logic/upgrades/ravager
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:shulker] at @s run function <<ns>>:logic/upgrades/shulker
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:silverfish] at @s run function <<ns>>:logic/upgrades/silverfish
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:skeleton] at @s run function <<ns>>:logic/upgrades/skeleton
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:slime] at @s run function <<ns>>:logic/upgrades/slime
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:stray] at @s run function <<ns>>:logic/upgrades/stray
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:spider] at @s run function <<ns>>:logic/upgrades/spider
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:vindicator] at @s run function <<ns>>:logic/upgrades/vindicator
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:witch] at @s run function <<ns>>:logic/upgrades/witch
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:wither_skeleton] at @s run function <<ns>>:logic/upgrades/wither_skeleton
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:zoglin] at @s run function <<ns>>:logic/upgrades/zoglin
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:zombie] at @s run function <<ns>>:logic/upgrades/zombie
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:zombie_villager] at @s run function <<ns>>:logic/upgrades/zombie_villager
/execute as @e[tag=<<tagUpgradeMe>>,type=minecraft:zombified_piglin] at @s run function <<ns>>:logic/upgrades/zombified_piglin

/tag @e[tag=<<tagUpgradeMe>>] remove <<tagUpgradeMe>>

/schedule function <<ns>>:logic/upgrade <<loopTime>>
