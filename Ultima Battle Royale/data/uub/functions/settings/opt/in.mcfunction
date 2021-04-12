scoreboard players set #temp _var 0
execute if score #flag game_state matches 0 run scoreboard players set #temp _var 1
execute if score #flag game_mode = #duels game_mode run scoreboard players set #temp _var 1
execute if score #flag game_mode = #brawl game_mode run scoreboard players set #temp _var 1
execute as @s[tag=participating] run scoreboard players set #temp _var 0

execute if score #temp _var matches 0 run tellraw @s [{"text": "Opt >> ","color": "dark_red","bold": true},{"text": "You can't opt into this game! Wait until afterwards.","bold": false}]
execute if score #temp _var matches 1 run function uub:settings/opt/in_success

function uub:settings/ender_chest/main
