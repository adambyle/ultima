tag @e[tag=v,sort=random,limit=1] add choice

execute if entity @e[tag=v,tag=manor,tag=choice] run scoreboard players set map q 1
execute if entity @e[tag=v,tag=woodlands,tag=choice] run scoreboard players set map q 2
execute if entity @e[tag=v,tag=dungeon,tag=choice] run scoreboard players set map q 3
execute if entity @e[tag=v,tag=abyss,tag=choice] run scoreboard players set map q 4
execute if entity @e[tag=v,tag=citadel,tag=choice] run scoreboard players set map q 5
execute if entity @e[tag=v,tag=reflect,tag=choice] run scoreboard players set map q 13
execute if entity @e[tag=v,tag=dracula,tag=choice] run scoreboard players set map q 14
execute if entity @e[tag=v,tag=avanto,tag=choice] run scoreboard players set map q 15

kill @e[tag=v]
