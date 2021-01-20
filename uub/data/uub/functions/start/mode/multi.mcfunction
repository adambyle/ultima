tag @r[tag=player,limit=4] add alive
execute as @a[tag=player,tag=!alive] run function uub:spawn/assign_queue
scoreboard players set @a[tag=player] score 0
execute if score #flag game_mode = #royale game_mode run tag @a[tag=!alive] remove player

scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay sidebar score
