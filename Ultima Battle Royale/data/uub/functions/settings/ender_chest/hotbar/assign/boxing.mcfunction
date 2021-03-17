execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.boxing.potion = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:snowball"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.boxing.ball = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
