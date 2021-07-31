function ult:settings/opt/out
tellraw @s [{"text": "N: ", "color": "dark_gray"}, {"text": "You did not ready in time and were automatically opted out.", "color": "#F8961E"}]
execute at @s if entity @e[tag=vote_station, distance=..3] run function ult:lobby
execute at @s run playsound entity.villager.no master @s ~ ~ ~ 4
