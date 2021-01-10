tag @a remove player
tag @s add player

tag @a remove killtag
execute at @s run tag @a[scores={qkill=1..},sort=nearest,limit=1,tag=!player] add killtag
scoreboard players remove @a[tag=killtag] qkill 1
tag @a[tag=killtag] remove fresh
execute unless score noplay debug matches 1 run scoreboard players add @a[tag=killtag] s.kills 1

tellraw @a ""

tag @a remove random
tag @r[tag=alive,tag=!killtag] add random

execute at @a[tag=killtag] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.7 50
execute as @a[tag=killtag] at @s run playsound entity.player.levelup master @s

execute if entity @a[tag=killtag,scores={qdeath=1..}] run function uub:death/simul
execute unless entity @a[tag=killtag,scores={qdeath=1..}] run function uub:death/msg/classic
execute if entity @a[tag=killtag] run function uub:death/special

scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killtag] pn
scoreboard players add @r[tag=killtag] kills 1
execute if score @s tether matches 0 run scoreboard players add @r[tag=random] kills 1
execute if score @s tether matches 0 run scoreboard players operation @s tether = @r[tag=random] pn
execute if score @s tether matches 0 run function uub:respawn

tag @a remove respawn
tag @a remove respawn_one
execute as @a[team=play,tag=!alive] if score @s tether = @r[tag=player] pn run tag @s add respawn
tag @r[tag=respawn] add respawn_one
execute as @a[tag=respawn] run function uub:respawn
tag @a[tag=respawn_one] remove respawn
execute if entity @a[tag=respawn_one] unless entity @a[tag=respawn] run tellraw @a [{"selector": "@a[tag=respawn_one]"},{"text": " respawned.","color": "gray"}]
execute if entity @a[tag=respawn] run tellraw @a [{"selector": "@a[tag=respawn]"},{"text": " and ","color": "gray"},{"selector": "@a[tag=respawn_one]"},{"text": " respawned.","color": "gray"}]

scoreboard players set alive n 0
execute as @a[tag=alive] run scoreboard players add alive n 1
execute if score alive n matches 1 as @a[tag=alive] run function uub:victory
