execute store result score rx n run data get entity @s Rotation[1]
execute store result score ry n run data get entity @s Rotation[0]
scoreboard players set afk n 1
execute unless score rx n = @s rx run scoreboard players set afk n 0
execute unless score ry n = @s ry run scoreboard players set afk n 0
execute if score afk n matches 1 run scoreboard players add @s[scores={hp=11..}] afk 1
execute if score afk n matches 0 run scoreboard players set @s afk 0
title @s reset
execute if score @s afk matches 150.. run title @s times 0 10 0
title @s subtitle {"text": "Move your camera!","color": "red"}
execute if score @s afk matches 150.. run title @s title {"text": "You're AFK!","color": "dark_red"}
execute if score @s afk matches 200.. run title @s reset
execute if score @s afk matches 200.. at @s run playsound entity.villager.no master @s
execute if score @s afk matches 200.. run tellraw @s {"text": "You were opted out for being AFK!","color": "dark_red"}
execute if score @s afk matches 200.. run trigger action set 5

execute store result score @s ry run data get entity @s Rotation[0]
execute store result score @s rx run data get entity @s Rotation[1]
