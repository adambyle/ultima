# Summon arrows for nearby players
execute positioned 46 28 42 as @p[tag=player,tag=alive,distance=..2] if entity @s[team=!boss] run scoreboard players remove #map event 1
execute positioned 46 28 42 as @p[tag=player,gamemode=adventure] if entity @s[team=boss] run scoreboard players remove #map event 2
execute if score #map event matches ..0 run summon item 46 28 42 {Item:{id:"minecraft:arrow",Count:1b},Tags:["static_item"]}
execute if score #map event matches ..0 run scoreboard players set #map event 60
execute positioned 46 28 42 unless entity @a[tag=player,distance=..6,gamemode=adventure] run kill @e[tag=static_item,type=item]
