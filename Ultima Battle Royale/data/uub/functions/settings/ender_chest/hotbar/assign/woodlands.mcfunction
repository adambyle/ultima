execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:wooden_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.woods.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:golden_apple"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.woods.gapple = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.woods.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.woods.arrows = #slot _varz

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
