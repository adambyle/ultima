execute if entity @a[tag=alive] run tellraw @a ""
execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=alive]"},{"text": " won at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"}]

title @s times 5 30 5
scoreboard players set game q 3
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
execute if entity @a[tag=alive] run title @a[tag=respawn] title {"text": "Respawning...","color": "red"}

tellraw @s [{"text": "Need a break? Don't leave and break the game. ","color": "gold"},{"text": "Opt out.","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 5"}}]
