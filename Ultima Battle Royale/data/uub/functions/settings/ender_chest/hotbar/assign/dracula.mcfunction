execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:iron_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dracula.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dracula.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dracula.arrows = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:trident"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dracula.tri = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:splash_potion", tag: {Potion: "minecraft:harming"}}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dracula.harm = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:splash_potion", tag: {Potion: "minecraft:water"}}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.dracula.weak = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
