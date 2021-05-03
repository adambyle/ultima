scoreboard players set #temp _var 0
scoreboard players set #temp pn 0
execute as @a[tag=player,scores={ready=1}] run scoreboard players add #temp pn 1
execute if score #flag game_mode = #duels game_mode if score #temp pn matches 2.. run scoreboard players set #temp _var 1
execute if score #flag game_mode = #royale game_mode if score #temp pn matches 3.. run scoreboard players set #temp _var 1
execute if score #flag game_mode = #brawl game_mode if score #temp pn matches 3.. run scoreboard players set #temp _var 1

execute if score #flag game_mode = #duels game_mode if score #flag map = #vote map run scoreboard players set #temp _var 0

execute if score #debug game_state matches 1 run scoreboard players set #temp _var 1

# Start the game if possible!
execute if score #temp _var matches 1 unless score #valid_ready _var matches 1 if entity @a[tag=player,scores={ready=0}] run tellraw @a {"text": "Enough players are ready! The game starts soon.","color": "blue"}
scoreboard players operation #valid_ready _var = #temp _var
execute if score #temp _var matches 1 unless entity @a[tag=player,scores={ready=0}] run function ult:start/ready/timeout
