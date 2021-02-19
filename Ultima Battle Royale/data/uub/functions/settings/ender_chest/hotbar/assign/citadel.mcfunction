execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:golden_axe"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.citadel.axe = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:shield"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.citadel.shield = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:golden_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.citadel.sword = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.citadel.bow = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.citadel.arrows = #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:ender_pearl"}].Slot
function uub:settings/ender_chest/hotbar/assign
scoreboard players operation @s z.citadel.pearls = #slot _var

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
