execute as @a at @s run playsound entity.item_frame.remove_item master @s
function uub:data/map_display
execute if score #flag map matches 0 run tellraw @a [{"text": "Selected map: ","color": "dark_gray"},{"selector": "@e[tag=text_display.map_name]"}]
execute unless score #flag map matches 0 run tellraw @a [{"text": "Selected map: ","color": "dark_gray"},{"selector": "@e[tag=text_display.map_author]"}]
execute if score #flag map = #random map run function uub:data/choose_map
execute as @a if score @s menu = #hotbar menu run function uub:settings/ender_chest/main
