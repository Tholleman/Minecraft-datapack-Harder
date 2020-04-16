/difficulty hard

/scoreboard objectives add hrd_num dummy
/scoreboard players set zero hrd_num 0

\if <<DEV>>
/tellraw @a "<<DATAPACK_NAME>> is loaded"

# Start the loop
/function <<ns>>:logic/upgrade
