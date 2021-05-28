function ult:data/root

execute if score @s pn matches 1 run fill 95 31 1 125 31 31 white_stained_glass replace red_stained_glass
execute if score @s pn matches 2 run fill 95 31 1 125 31 31 white_stained_glass replace blue_stained_glass
execute if score @s pn matches 3 run fill 95 31 1 125 31 31 white_stained_glass replace green_stained_glass
execute if score @s pn matches 4 run fill 95 31 1 125 31 31 white_stained_glass replace yellow_stained_glass

tag @s remove alive
scoreboard players reset @s pn
scoreboard players reset @s health_display

execute as @a[tag=player] if score @s tether = @r[tag=root] pn run scoreboard players reset @s tether
execute as @e[type=#ult:projectiles] run function ult:exit/kill_projectiles

function ult:settings/ender_chest/main

execute if score @s[tag=player] online matches 1 run scoreboard players remove .total_players control 1
