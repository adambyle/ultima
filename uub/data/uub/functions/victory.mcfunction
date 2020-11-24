title @a times 5 30 5
title @a title [{"selector": "@s"},{"text": " wins!","color": "white"}]
execute at @s run playsound event.raid.horn master @s
execute as @a[tag=!alive] at @s run playsound entity.wither.hurt master @s
schedule function uub:load 2s
