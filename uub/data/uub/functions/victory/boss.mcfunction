execute as @a[team=fighters] at @s run playsound entity.wither.hurt master @s
execute as @a[team=boss] at @s run playsound entity.player.levelup master @s
scoreboard players set #flag game_state 2
title @a reset
title @a times 5 70 5
title @a[team=boss,tag=player] title {"text": "Victory!","color": "dark_green"}
title @a[team=fighters,tag=player] title {"text": "Defeat!","color": "dark_red"}
clear @a[team=fighters,tag=player]
schedule function uub:load 4s

scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay list

function uub:data/generate_voted_maps
