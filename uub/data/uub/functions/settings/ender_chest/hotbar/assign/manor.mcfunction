execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:diamond_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:diamond_axe"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.axe = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.crossbow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.potion = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:shield"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.shield = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.manor.arrows = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
