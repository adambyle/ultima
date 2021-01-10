scoreboard players set @s kills 0
execute if score mode q matches 2..3 run function uub:start/queueassign
execute if score mode q matches 3 if score pn q matches ..3 run function uub:start/swapin
team join play
tag @s remove team_spect
tag @s add team_play
scoreboard players add pn q 1
scoreboard players set @s tether 0
tellraw @a [{"selector": "@s","color": "blue"},{"text": " has opted in.","color": "blue"}]
function uub:settings/main_menu
