execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:diamond_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.abyss.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.abyss.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.abyss.potion = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.abyss.arrows = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:netherite_ingot"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.abyss.ingot = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:fishing_rod"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.abyss.rod = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
