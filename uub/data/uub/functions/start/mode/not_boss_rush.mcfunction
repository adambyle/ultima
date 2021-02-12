execute if score #flag game_mode = #duels game_mode run function uub:start/mode/duels
execute if score #flag game_mode matches 1..2 run function uub:start/mode/multi

scoreboard players set @a[tag=player] score 0
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay sidebar score
