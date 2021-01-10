execute if entity @a[tag=alive] run tellraw @a ""
execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=alive]"},{"text": " won at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"}]
execute as @a[tag=alive] run function uub:stat/win
execute as @a[team=play] run function uub:stat/play
execute unless score noplay debug matches 1 run scoreboard players add @a[tag=alive] s.kills 1

title @a reset
title @s times 5 30 5
scoreboard players set game q 2
schedule function uub:event/duels 2s replace
execute at @a[tag=alive] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.7 50
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:5,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
clear @a[team=play]

tag @a remove respawn
scoreboard players reset i n
execute if entity @a[tag=alive] run function uub:start/queueassign
execute if entity @a[tag=alive] run tag @a[scores={queue=1}] add respawn
execute if entity @a[tag=alive] run tellraw @a [{"text": "Next challenger: ","color": "gray"},{"selector": "@a[tag=respawn]","color": "blue"}]
execute unless score pn q matches 2 if entity @a[tag=alive] as @a[tag=respawn] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2 2
execute if entity @a[tag=alive] if score randmap q matches 0 run title @a[tag=respawn] title {"text": "Respawning...","color": "red"}

scoreboard players set @a qkill 0

execute unless score randmap q matches 0 run title @a reset
execute unless score randmap q matches 0 run title @a times 0 20 5
execute if score randmap q matches 1.. run function uub:settings/next_map
execute if score randmap q matches 1.. run scoreboard players operation map q = randmap q
execute if score randmap q matches -2 run function uub:settings/randmap
execute unless score randmap q matches 0 run title @a subtitle {"text": "Next up","color": "gold"}
execute unless score randmap q matches 0 run function uub:settings/announce_map
execute unless score randmap q matches 0 run function uub:event/lighting

scoreboard players set @a qdeath 0
