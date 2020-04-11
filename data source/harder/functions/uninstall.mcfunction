/scoreboard objectives remove hrd_num

/schedule clear <<ns>>:logic/upgrade

\var successStorage uninstallSuccess
/scoreboard objectives add <<successStorage>> dummy
/execute store result score @s <<successStorage>> run datapack disable "file/<<DATAPACK_NAME>> <<DATAPACK_VERSION>>.zip"
/tellraw @s[scores={<<successStorage>>=0}] {"text":"Disable/remove the zip file to uninstall","italic":true,"color":"red"}
/tellraw @s[scores={<<successStorage>>=1..}] {"text":"The datapack is disabled but should be removed to completely uninstall","italic":true,"color":"green"}
/scoreboard objectives remove <<successStorage>>
