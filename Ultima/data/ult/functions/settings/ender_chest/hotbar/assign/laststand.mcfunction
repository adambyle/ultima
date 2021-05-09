function ult:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:netherite_sword"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:netherite_axe"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.axe int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.bow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:coal"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.cannonball int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:shield"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.shield int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.arrows int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:splash_potion"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.laststand.potion int 1.0 run scoreboard players get #slot _var

function ult:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
