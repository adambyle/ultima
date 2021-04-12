function uub:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:wooden_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.woodlands.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:golden_apple"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.woodlands.gapple int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.woodlands.bow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.woodlands.arrows int 1.0 run scoreboard players get #slot _varz

function uub:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
