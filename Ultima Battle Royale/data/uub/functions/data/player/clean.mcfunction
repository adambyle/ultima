scoreboard players set @s pn 0
scoreboard players set @s score 0
execute as @s[tag=!spectator] run function uub:settings/opt/out

function uub:data/player/reset_waits
