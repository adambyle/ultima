function ult:data/player/get

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:diamond_axe"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.ancient.axe int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:diamond_pickaxe"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.ancient.pickaxe int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:fire_charge"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.ancient.fireball int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:netherite_ingot"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.ancient.ingot int 1.0 run scoreboard players get .slot var

execute store result score .slot var run data get entity @s EnderItems[{id: "minecraft:diamond_hoe"}].Slot
function ult:settings/player/hotbar/workspace/assign
execute store result storage ult:temp Player.Hotbar.ancient.hoe int 1.0 run scoreboard players get .slot var

function ult:data/player/save

tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Saved your hotbar settings!", "color": "#43AA8B"}]
tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, "Saved."]
execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
