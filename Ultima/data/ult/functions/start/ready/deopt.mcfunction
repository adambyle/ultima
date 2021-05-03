function ult:settings/opt/out
tellraw @s {"text": "You did not ready in time and were automatically opted out.","color": "yellow"}
execute at @s run playsound entity.villager.no master @s
