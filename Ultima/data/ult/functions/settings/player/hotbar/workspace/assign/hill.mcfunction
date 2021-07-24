function ult:data/player/get_nbt

function ult:data/player/save_nbt

tellraw @s [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
