tag @r[tag=player,limit=2] add alive
execute as @a[tag=player,tag=!alive] run function ult:spawn/assign_queue

scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health
