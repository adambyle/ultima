function ult:data/player/get_nbt

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:stone_sword"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.reflection.sword int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:crossbow"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.reflection.crossbow int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:firework_rocket"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.reflection.rocket int 1.0 run scoreboard players get .slot _var

execute store result score .slot _var run data get entity @s EnderItems[{id: "minecraft:ender_pearl"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.reflection.pearls int 1.0 run scoreboard players get .slot _var

function ult:data/player/save_nbt

tellraw @s [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
