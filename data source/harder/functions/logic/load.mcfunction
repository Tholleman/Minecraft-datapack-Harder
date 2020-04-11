/difficulty hard

/scoreboard objectives add hrd_num dummy
/scoreboard players set zero hrd_num 0

\clevel 2
/tellraw @a "<<DATAPACK_NAME>> <<DATAPACK_VERSION>> is loaded"

# Start the loop
/function <<ns>>:logic/upgrade
