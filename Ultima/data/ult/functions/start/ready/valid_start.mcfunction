scoreboard players set .temp _var 0
scoreboard players set .temp_pn _var 0
execute as @a[tag=player,scores={ready=1}] run scoreboard players add .temp_pn _var 1
execute if score .game_mode flag = flag.game_mode.duels const if score .temp_pn _var matches 2.. run scoreboard players set .temp _var 1
execute if score .game_mode flag = flag.game_mode.royale const if score .temp_pn _var matches 3.. run scoreboard players set .temp _var 1
execute if score .game_mode flag = flag.game_mode.brawl const if score .temp_pn _var matches 3.. run scoreboard players set .temp _var 1

execute if score .game_mode flag = flag.game_mode.duels const if score .map_mode flag = flag.map_mode.vote const run scoreboard players set .temp _var 0

execute if score .debug_mode flag matches 1 run scoreboard players set .temp _var 1

# Start the game if possible!
execute if score .temp _var matches 1 unless score .valid_ready _var matches 1 if entity @a[tag=player,scores={ready=0}] run tellraw @a {"text": "Enough players are ready! The game starts soon.", "color": "blue"}
scoreboard players operation .valid_ready _var = .temp _var
execute if score .temp _var matches 1 unless entity @a[tag=player,scores={ready=0}] run function ult:start/ready/timeout
