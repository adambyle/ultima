function ult:data/player/get_nbt

function ult:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ", "color": "dark_green", "bold": true}, {"text": "Saved your hotbar settings!", "bold": false}]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
