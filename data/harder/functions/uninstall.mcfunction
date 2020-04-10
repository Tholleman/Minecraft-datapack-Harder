scoreboard objectives remove hrd_num
schedule clear harder:logic/upgrade
scoreboard objectives add uninstallSuccess dummy
execute store result score @s uninstallSuccess run datapack disable "file/harder 1.15.2.zip"
tellraw @s[scores={uninstallSuccess=0}] {"text":"Disable/remove the zip file to uninstall","italic":true,"color":"red"}
tellraw @s[scores={uninstallSuccess=1..}] {"text":"The datapack is disabled but should be removed to completely uninstall","italic":true,"color":"green"}
scoreboard objectives remove uninstallSuccess