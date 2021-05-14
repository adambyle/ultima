tag @r[tag=player,limit=2] add alive
execute as @a[tag=player,tag=!alive] run function ult:spawn/assign_queue

scoreboard objectives setdisplay belowName display_health
scoreboard objectives setdisplay list display_health
