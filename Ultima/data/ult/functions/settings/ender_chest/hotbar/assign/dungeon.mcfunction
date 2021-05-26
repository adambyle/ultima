function ult:data/player/get_nbt

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:stone_axe"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.dungeon.axe int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:shield"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.dungeon.shield int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:splash_potion"}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.dungeon.harm int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:potion", tag: {CustomPotionEffects: [{Id: 1b}]}}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.dungeon.stealth_pot int 1.0 run scoreboard players get #slot _var

execute store result score #slot _var run data get entity @s EnderItems[{id: "minecraft:potion", tag: {CustomPotionEffects: [{Id: 3b}]}}].Slot
function ult:settings/ender_chest/hotbar/assign
execute store result storage ult:temp Player.Hotbar.dungeon.frenzy_pot int 1.0 run scoreboard players get #slot _var

function ult:data/player/save_nbt

tellraw @s [{"text": "Hotbar >> ", "color": "dark_green", "bold": true},{"text": "Saved your hotbar settings!", "bold": false}]
execute at @s run playsound block.smithing_table.use master @s
