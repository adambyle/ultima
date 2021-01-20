scoreboard players set @s pn 0
scoreboard players set @s tether 0
scoreboard players set @s queue 0
scoreboard players set @s score 0
scoreboard players operation @s game_id = #server game_id
tag @s remove player
tag @s remove in_lobby
function uub:settings/opt/out

function uub:data/player/reset_waits
