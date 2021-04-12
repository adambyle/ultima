function uub:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:diamond_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:diamond_axe"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.axe int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.bow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.crossbow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.potion int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:shield"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.shield int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.manor.arrows int 1.0 run scoreboard players get #slot _var

function uub:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
