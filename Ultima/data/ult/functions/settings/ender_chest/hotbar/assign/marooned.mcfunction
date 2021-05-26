function ult:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:iron_sword"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.marooned.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:crossbow"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.marooned.crossbow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:trident"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.marooned.trident int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:heart_of_the_sea"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.marooned.heart int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:firework_rocket"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.marooned.arrows int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:cooked_salmon"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.marooned.fish int 1.0 run scoreboard players get #slot _var

function ult:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ", "color": "dark_green", "bold": true},{"text": "Saved your hotbar settings!", "bold": false}]
execute at @s run playsound block.smithing_table.use master @s
