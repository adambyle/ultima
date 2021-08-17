function ult:data/player/get

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:netherite_sword"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.sword int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:netherite_axe"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.axe int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:bow"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.bow int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:coal"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.cannonball int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:shield"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.shield int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:arrow"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.arrows int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:splash_potion"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.lastStand.potion int 1.0 run scoreboard players get .slot _var

function ult:data/player/save

tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, "Saved."]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
