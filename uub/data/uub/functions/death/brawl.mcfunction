tag @a remove killtag
tag @r[scores={qkill=1..}] add killtag
scoreboard players remove @a[tag=killtag] qkill 1

tellraw @a ""

tag @a remove player
tag @s add player
tag @a remove random
tag @r[tag=alive,tag=!killtag] add random

execute at @a[tag=killtag] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.7 50
execute as @a[tag=killtag] at @s run playsound entity.player.levelup master @s

function uub:death/msg

execute if score @r[tag=killtag] tether = @s pn run scoreboard players add @a[tag=killtag] kills 2
execute as @s[tag=!fresh] run scoreboard players add @a[tag=killtag] kills 1
execute as @a if score @s tether = @r[tag=player] pn run scoreboard players set @s tether 0
scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killtag] pn

function uub:start/queueassign

tag @a remove respawn
tag @a[scores={queue=1},team=play] add respawn
execute as @a[tag=respawn] run function uub:start/swapin
title @a[tag=respawn] reset
title @a[tag=respawn] times 5 25 5
title @a[tag=respawn] title {"text": "Respawning!","color": "red"}
tellraw @a [{"selector": "@a[tag=respawn]"},{"text": " will respawn.","color": "gray"}]
execute as @a[tag=respawn] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2 2

execute as @a[tag=killtag,scores={kills=3..}] run tellraw @a [{"selector": "@a[tag=alive]"},{"text": " wins!","color": "gray"}]
execute as @a[tag=killtag,scores={kills=3..}] run function uub:victory
tellraw @a[team=play] [{"text": "If you need to leave or take a break, ","color": "gold"},{"text": "opt out.","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 5"}}]
tellraw @a[team=spect] [{"text": "Want to join the fun? ","color": "green"},{"text": "Opt in.","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 6"}}]
