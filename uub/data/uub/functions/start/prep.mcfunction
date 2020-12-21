title @a reset
title @a times 0 20 5
execute if score randmap q matches 1..3 run title @a subtitle {"text": "By Adam Byle","color": "gold"}
execute if score randmap q matches 1 run title @a title {"text": "Manor","color": "yellow"}
execute if score randmap q matches 2 run title @a title {"text": "Woodlands","color": "yellow"}
execute if score randmap q matches 3 run title @a title {"text": "Dungeon","color": "yellow"}

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

execute as @e[type=armor_stand] run data remove entity @s CustomNameVisible

team modify play collisionRule always
team modify play friendlyFire true

scoreboard objectives setdisplay sidebar
scoreboard players reset * kills
scoreboard players set @a kills 0
scoreboard players set @a tether 0
scoreboard players set @a timer -1
execute if score mode q matches 3 run scoreboard objectives setdisplay sidebar kills
