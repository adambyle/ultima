execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:iron_axe"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dungeon.axe = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:shield"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dungeon.shield = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:splash_potion"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dungeon.harm = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion", tag: {CustomPotionEffects: [{Id: 14b}]}}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dungeon.sneak = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:potion", tag: {CustomPotionEffects: [{Id: 3b}]}}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dungeon.speed = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
