function uub:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:stone_sword"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.dracula.sword int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:crossbow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.dracula.crossbow int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:arrow"}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.dracula.arrows int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:splash_potion", tag: {Potion: "minecraft:harming"}}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.dracula.harm_pot int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id:"minecraft:splash_potion", tag: {Potion: "minecraft:water"}}].Slot
function uub:settings/ender_chest/hotbar/assign
execute store result storage uub:temp Player.Hotbar.dracula.weak_pot int 1.0 run scoreboard players get #slot _var

function uub:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ","color": "dark_green","bold": true},{"text": "Saved your hotbar settings!","bold": false}]
execute at @s run playsound block.smithing_table.use master @s
