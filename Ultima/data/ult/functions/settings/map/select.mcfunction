scoreboard players set .map_mode flag 0
scoreboard players operation .map flag = #selected map
function ult:data/map/map_display
execute if score .map_mode flag matches 0 run tellraw @a [{"text": "Selected map: ", "color": "dark_gray"}, {"selector": "@e[tag=text_display.map_name]"}]
execute as @a at @s run playsound entity.item_frame.remove_item master @s
execute as @a if score @s menu = menu.hotbar const run function ult:settings/ender_chest/main
clear @a[gamemode=!creative] #ult:map_icons

execute at @e[tag=vote_station] run tp @a[distance=..2] 45 30 -12
