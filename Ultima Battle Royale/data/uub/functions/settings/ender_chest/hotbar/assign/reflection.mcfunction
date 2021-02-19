execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:stone_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.reflect.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.reflect.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:firework_rocket"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.reflect.arrows = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:ender_pearl"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.reflect.pearls = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
