execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:stone_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.avanto.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:bow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.avanto.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:tipped_arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.avanto.arrows = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.avanto.jump = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
