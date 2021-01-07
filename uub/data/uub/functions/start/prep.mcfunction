team leave @a
team join play @a[tag=team_play]
team join spect @a[tag=team_spect]
tag @a[team=play] add can_win

tag @a remove alive
execute if score mode q matches 1 run tag @a[team=play] add alive
execute if score mode q matches 2 run tag @r[limit=2,team=play] add alive
execute if score mode q matches 3 run tag @r[limit=4,team=play] add alive
scoreboard players set game q 1

scoreboard players reset * pn
scoreboard players reset i n
execute as @a[team=play,tag=alive] run function uub:start/pnassign

scoreboard players reset * queue
scoreboard players reset i n
execute as @a[team=play,tag=!alive] run function uub:start/queueassign

gamemode spectator @a[tag=!alive]
execute as @a run function uub:tp
execute as @a[team=play] run function uub:items

execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 1.5 
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 2

effect clear @a

execute as @e[tag=text] run data remove entity @s CustomNameVisible

team modify play collisionRule always
team modify play friendlyFire true

scoreboard objectives setdisplay sidebar
scoreboard players reset * kills
scoreboard players set @a[team=play] kills 0
scoreboard players set @a tether 0
scoreboard players set @a timer -1
execute if score mode q matches 3 run scoreboard objectives setdisplay sidebar kills

execute if score map q matches 5 run scoreboard players set event_timer n 20
