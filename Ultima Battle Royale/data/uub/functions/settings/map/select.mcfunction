scoreboard players set #flag map 0
scoreboard players operation #server map = #selected map
function uub:data/map_display
execute if score #flag map matches 0 run tellraw @a [{"text": "Selected map: ","color": "dark_gray"},{"selector": "@e[tag=text_display.map_name]"}]
execute as @a at @s run playsound entity.item_frame.remove_item master @s
execute as @a if score @s menu = #hotbar menu run function uub:settings/ender_chest/main
clear @a[gamemode=!creative] #uub:map_icons

execute at @e[tag=vote_station] run tp @a[distance=..3] 45 30 -12
