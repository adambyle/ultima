function ult:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:golden_axe"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.citadel.axe int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:shield"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.citadel.shield int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:golden_sword"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.citadel.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:crossbow"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.citadel.crossbow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:arrow"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.citadel.arrows int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:ender_pearl"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.citadel.pearls int 1.0 run scoreboard players get #slot _var

function ult:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ", "color": "dark_green", "bold": true},{"text": "Saved your hotbar settings!", "bold": false}]
execute at @s run playsound block.smithing_table.use master @s
