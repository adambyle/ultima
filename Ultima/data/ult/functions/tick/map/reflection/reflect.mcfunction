tag @s add reflection_rocket

tag @e remove temp
tag @e remove temp2
summon marker ~ ~ ~ {Tags: ["temp2"]}

execute store result score .y _var run data get entity @s Pos[1] 10000
scoreboard players set .new_y _var 315000
scoreboard players operation .new_y _var -= .y _var
scoreboard players add .new_y _var 315000
execute store result entity @e[limit=1, tag=temp2] Pos[1] double 0.0001 run scoreboard players get .new_y _var
execute at @e[tag=temp2] run summon firework_rocket ~ ~ ~ {ShotAtAngle: true, Tags: ["reflection_rocket", "temp"]}

data modify entity @e[limit=1, tag=temp] Rotation set from entity @s Rotation
execute store result entity @e[limit=1, tag=temp] Rotation[1] float -0.0001 run data get entity @s Rotation[1] 10000
data modify entity @e[limit=1, tag=temp] Motion set from entity @s Motion
execute store result entity @e[limit=1, tag=temp] Motion[1] double -0.0001 run data get entity @s Motion[1] 10000
data modify entity @e[limit=1, tag=temp] Life set from entity @s Life
data modify entity @e[limit=1, tag=temp] LifeTime set from entity @s LifeTime
data modify entity @e[limit=1, tag=temp] Owner set from entity @s Owner
data modify entity @e[limit=1, tag=temp] FireworksItem set from entity @s FireworksItem

tag @e remove temp
kill @e[tag=temp2]
