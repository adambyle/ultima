function uub:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:diamond_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.abyss.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.abyss.bow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.abyss.potion int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.abyss.arrows int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:netherite_ingot"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.abyss.ingot int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:fishing_rod"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.abyss.fishing_rod int 1.0 run scoreboard players get #slot _var

function uub:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
