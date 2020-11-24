tag @a remove killtag
tag @r[scores={qkill=1..}] add killtag
scoreboard players remove @a[tag=killtag] qkill 1

execute at @a[tag=killtag] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.7 50
execute as @a[tag=killtag] at @s run playsound entity.player.levelup master @s

scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killtag] pn
execute if score @s tether matches 0 run scoreboard players operation @s tether = @r[tag=alive] pn
execute if score @s tether matches 0 run function uub:respawn

tag @a remove player
tag @s add player
execute as @a[team=play,tag=!alive] if score @s tether = @r[tag=player] pn run function uub:respawn

scoreboard players set alive n 0
execute as @a[tag=alive] run scoreboard players add alive n 1
execute if score alive n matches 1 as @a[tag=alive] run function uub:victory
