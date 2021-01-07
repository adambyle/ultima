title @a reset

execute unless score noplay debug matches 1 as @s[tag=can_win] run function uub:stat/win

title @a title [{"selector": "@s"},{"text": " wins!","color": "white"}]
title @a times 5 25 5
execute at @s run playsound entity.wither.spawn master @s ~ ~ ~ 8
execute as @a[tag=!alive] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 8
schedule function uub:load/reload 2s

tag @a remove player
tag @s add player
gamemode spectator @a[tag=!player]

execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:5,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}

execute unless score noplay debug matches 1 as @a[team=play,tag=can_win] run function uub:stat/play

scoreboard players set played_game n 1
