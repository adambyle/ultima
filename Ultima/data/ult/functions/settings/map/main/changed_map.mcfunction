execute as @a at @s run playsound entity.item_frame.remove_item master @s
function ult:data/map/map_display
execute if score .map_mode flag matches 0 run tellraw @a [{"text": "Selected map: ", "color": "dark_gray"}, {"selector": "@e[tag=text_display.map_name]"}]
execute unless score .map_mode flag matches 0 run tellraw @a [{"text": "Selected map: ", "color": "dark_gray"}, {"selector": "@e[tag=text_display.map_author]"}]
execute if score .map_mode flag = flag.map_mode.random const run function ult:data/map/choose_map
execute as @a if score @s menu = menu.hotbar const run function ult:settings/ender_chest/main

execute if score .map_mode flag = flag.map_mode.vote const as @a[scores={ready=1}] run function ult:start/ready/unready
execute at @e[tag=vote_station] run tp @a[distance=..3] 45 30 -12
