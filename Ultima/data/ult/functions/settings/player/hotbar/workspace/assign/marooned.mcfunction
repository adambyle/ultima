function ult:data/player/get

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:iron_sword"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.marooned.sword int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:crossbow"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.marooned.crossbow int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:trident"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.marooned.trident int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:heart_of_the_sea"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.marooned.heart int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:firework_rocket"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.marooned.arrows int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:cooked_salmon"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.marooned.fish int 1.0 run scoreboard players get .slot var

function ult:data/player/save

tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, "Saved."]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
