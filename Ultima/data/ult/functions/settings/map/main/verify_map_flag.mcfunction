scoreboard players set .temp _var 0
scoreboard players operation .temp _var -= .temp_map _var
execute store success score .temp _var unless score .temp _var = .map_mode flag
