function ult:settings/opt/out
tellraw @s[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "You did not ready in time and were automatically opted out.", "color": "#F8961E"}]
tellraw @s[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, "Game started without you."]
execute at @s if entity @e[tag=vote_station, distance=..3] run function ult:lobby
execute at @s run playsound entity.villager.no master @s ~ ~ ~ 4
