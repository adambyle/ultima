function ult:data/player/get

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:golden_axe"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.citadel.axe int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:shield"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.citadel.shield int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:golden_sword"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.citadel.sword int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:crossbow"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.citadel.crossbow int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:arrow"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.citadel.arrows int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:ender_pearl"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.citadel.pearls int 1.0 run scoreboard players get .slot _var

function ult:data/player/save

tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, "Saved."]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
