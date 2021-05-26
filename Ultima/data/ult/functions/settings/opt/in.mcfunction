scoreboard players set #temp _var 0
execute if score #flag game_state matches 0 run scoreboard players set #temp _var 1
execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set #temp _var 1
execute as @s[tag=participating] run scoreboard players set #temp _var 0
execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set #temp _var 1

execute if score #temp _var matches 0 run tellraw @s [{"text": "Opt >> ", "color": "dark_red", "bold": true},{"text": "You can't opt into this game! Wait until afterwards.", "bold": false}]
execute if score #temp _var matches 1 run function ult:settings/opt/in_success

function ult:settings/ender_chest/main
