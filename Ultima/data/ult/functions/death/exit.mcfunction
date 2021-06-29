function ult:data/root

execute if score @s pn matches 1 run fill 95 31 1 125 31 31 white_stained_glass replace red_stained_glass
execute if score @s pn matches 2 run fill 95 31 1 125 31 31 white_stained_glass replace blue_stained_glass
execute if score @s pn matches 3 run fill 95 31 1 125 31 31 white_stained_glass replace green_stained_glass
execute if score @s pn matches 4 run fill 95 31 1 125 31 31 white_stained_glass replace yellow_stained_glass

execute as @a[tag=player] if score @s tether = @r[tag=root] pn run scoreboard players set @s tether -1
execute as @e[type=#ult:projectiles] run function ult:death/kill_projectiles

tag @s remove alive
scoreboard players reset @s pn
scoreboard players reset @s health_display

function ult:spawn/assign_queue

function ult:settings/player/main

# Spectate or lobby
    function ult:data/player/get_nbt
    execute store result score .spect_mode _var run data get storage ult:temp Player.Spectate.death
    function ult:exit

scoreboard players reset @s death
scoreboard players reset @s kill

title @s actionbar ""
