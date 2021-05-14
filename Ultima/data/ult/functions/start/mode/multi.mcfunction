tag @r[tag=player,limit=4] add alive
execute if score #flag game_mode = #brawl game_mode as @a[tag=player,tag=!alive] run function ult:spawn/assign_queue
execute if score #flag game_mode = #royale game_mode as @a[tag=!alive] run function ult:start/mode/multi/kick
scoreboard objectives modify score displayname {"text": "Score","color": "blue"}

scoreboard objectives setdisplay belowName display_health
scoreboard objectives setdisplay list display_health

scoreboard players set #goal score 5
