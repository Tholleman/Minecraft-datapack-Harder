scoreboard players reset zero hrd_num
scoreboard players reset one hrd_num
scoreboard objectives remove hrd_num
scoreboard objectives remove hrd_progress
scoreboard objectives remove hrd_difficulty
schedule clear harder:logic/upgrade
scoreboard objectives add uninstallSuccess dummy
execute store result score @s uninstallSuccess run datapack disable "file/harder 1.16-snapshot.zip"
tellraw @s[scores={uninstallSuccess=0}] {"text":"Disable/remove the zip file to uninstall","italic":true,"color":"red"}
tellraw @s[scores={uninstallSuccess=1..}] {"text":"The datapack is disabled but should be removed to completely uninstall","italic":true,"color":"green"}
scoreboard objectives remove uninstallSuccess