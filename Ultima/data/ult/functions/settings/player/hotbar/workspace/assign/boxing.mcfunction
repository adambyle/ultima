function ult:data/player/get_nbt

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:potion"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.boxing.potion int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:snowball"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.boxing.powerball int 1.0 run scoreboard players get .slot _var

function ult:data/player/save_nbt

tellraw @s [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
