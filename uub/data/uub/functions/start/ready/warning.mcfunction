execute if score #flag game_mode = #duels game_mode if score #flag map = #vote map run tellraw @s {"text": "Notice: you can't play Vote Map in Duels mode.","color": "yellow"}

scoreboard players set #temp pn 0
scoreboard players set #temp _var 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
execute if score #flag game_mode = #duels game_mode if score #temp pn matches 2.. run scoreboard players set #temp _var 1
execute if score #flag game_mode = #royale game_mode if score #temp pn matches 3.. run scoreboard players set #temp _var 1
execute if score #flag game_mode = #brawl game_mode if score #temp pn matches 4.. run scoreboard players set #temp _var 1
execute if score #flag game_mode = #boss game_mode if score #temp pn matches 2.. run scoreboard players set #temp _var 1

execute if score #temp _var matches 0 run tellraw @a {"text": "Notice: you need more players opted in to play this mode.","color": "yellow"}
