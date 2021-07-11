function ult:data/root
execute unless entity @a[tag=!root] run function ult:reset

scoreboard players reset @s action
scoreboard players reset @s afk
scoreboard players reset @s damage_taken
scoreboard players reset @s damage_dealt
scoreboard players reset @s death
scoreboard players reset @s health
scoreboard players reset @s health_display
scoreboard players reset @s hotbar_map
scoreboard players reset @s kill
scoreboard players reset @s menu
scoreboard players reset @s pn
scoreboard players reset @s respawn
scoreboard players reset @s queue
scoreboard players reset @s score
scoreboard players reset @s tether
scoreboard players reset @s vote

    tag @s remove alive
    tag @s remove change_modes
    tag @s remove fresh
    tag @s remove participating

function ult:data/player/default_hotbar
function ult:settings/player/main
function ult:load/deop
tag @s[name="beegyfleeg"] add operator
bossbar set ult:game_start players @a
execute as @s[tag=!played_ultima] run function ult:join/first_time_playing

scoreboard players reset * wins
scoreboard players set @a wins 0
