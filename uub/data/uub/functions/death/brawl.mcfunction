tag @a remove player
tag @s add player

tag @a remove killtag
execute at @s run tag @a[scores={qkill=1..},sort=nearest,limit=1,tag=!player] add killtag
scoreboard players remove @a[tag=killtag] qkill 1
tag @a[tag=killtag] remove fresh
execute unless score noplay debug matches 1 run scoreboard players add @a[tag=killtag] s.kills 1

tellraw @a ""

execute at @a[tag=killtag] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.7 50
execute as @a[tag=killtag] at @s run playsound entity.player.levelup master @s

function uub:death/msg/brawl

execute if score @r[tag=killtag] tether = @s[tag=!fresh] pn run scoreboard players add @a[tag=killtag] kills 3
execute as @s[tag=!fresh] unless score @r[tag=killtag] tether = @s[tag=!fresh] pn run scoreboard players add @a[tag=killtag] kills 2
execute as @s[tag=fresh] run scoreboard players add @a[tag=killtag] kills 1
execute unless entity @a[tag=killtag] run scoreboard players add @a[tag=!player,team=play] kills 1
execute as @a if score @s tether = @r[tag=player] pn run scoreboard players set @s tether 0
scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killtag] pn

scoreboard players reset i n
function uub:start/queueassign

tag @a remove respawn
tag @a[scores={queue=1},team=play] add respawn
execute as @a[tag=respawn] run function uub:start/swapin
title @a[tag=respawn] reset
title @a[tag=respawn] times 5 25 5
title @a[tag=respawn] title {"text": "Respawning!","color": "red"}
execute if score pn n matches 5.. run tellraw @a [{"selector": "@a[tag=respawn]"},{"text": " will respawn.","color": "gray"}]
execute as @a[tag=respawn] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2 2

execute as @a[tag=killtag] if score @s kills >= goal q as @a if score @s kills < goal q run tag @s remove alive
execute as @a[tag=killtag] if score @s kills >= goal q run tellraw @a [{"selector": "@a[tag=alive]"},{"text": " wins!","color": "gray"}]
execute as @a[tag=killtag] if score @s kills >= goal q run function uub:victory
tellraw @a[team=play] [{"text": "If you need to leave or take a break, ","color": "gold"},{"text": "opt out.","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 5"}}]
tellraw @a[team=spect] [{"text": "Want to join the fun? ","color": "gold"},{"text": "Opt in.","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 6"}}]
