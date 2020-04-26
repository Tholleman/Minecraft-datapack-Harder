/difficulty hard

/scoreboard objectives add hrd_num dummy
/scoreboard players set zero hrd_num 0
/scoreboard players set one hrd_num 1

/scoreboard objectives add hrd_progress dummy
/scoreboard objectives add hrd_difficulty dummy

\if <<DEV>>
/tellraw @a "<<DATAPACK_NAME>> is loaded"

# Start the loop
/function <<ns>>:logic/upgrade
