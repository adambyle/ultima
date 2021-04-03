execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:wooden_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.wastes.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:flint"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.wastes.bomb = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.wastes.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.wastes.arrows = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:cooked_rabbit"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.wastes.rabbit = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
