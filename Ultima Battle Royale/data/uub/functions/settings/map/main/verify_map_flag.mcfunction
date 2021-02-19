scoreboard players set #temp _var 0
scoreboard players operation #temp _var -= #temp map
execute store success score #temp _var unless score #temp _var = #flag map
