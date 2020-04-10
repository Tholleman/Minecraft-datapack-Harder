\file ../config.txt

/difficulty hard

/scoreboard objectives add hrd_num dummy
/scoreboard players set zero hrd_num 0

\clevel 2
/tellraw @a "Harder is loaded"

# Start the loop
/function <<ns>>:logic/upgrade
