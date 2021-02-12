tag @r[tag=player,limit=2] add alive
execute as @a[tag=player,tag=!alive] run function uub:spawn/assign_queue
scoreboard objectives modify score displayname {"text": "Wins","color": "dark_green"}
