scoreboard players operation #temp rot = @s rot
execute if score #temp rot matches ..0 run scoreboard players add #temp rot 360
scoreboard players operation #temp2 rot = @r[tag=root] rot
execute if score #temp2 rot matches ..0 run scoreboard players add #temp2 rot 360
scoreboard players operation #temp rot -= #temp2 rot
execute unless score #temp rot matches -60..60 run scoreboard players set #test _var 0
