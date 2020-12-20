tag @s add low
tag @a remove player
tag @s add player
execute as @a[team=play,tag=!alive] if score @s tether = @r[tag=player] pn run tellraw @s [{"selector": "@a[tag=player]","color": "white"},{"text": " is about to be killed! ","color": "green"},{"text": "Get ready to respawn!","color": "dark_green"}]
execute as @a[team=play,tag=!alive] if score @s tether = @r[tag=player] pn at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2 2
