# Convert real slot id to value used in storage
    execute if score .slot var matches 15..17 run scoreboard players remove .slot var 5
    execute if score .slot var matches 18.. run scoreboard players remove .slot var 18
    execute if score .slot var matches 9 run scoreboard players set .slot var -1
