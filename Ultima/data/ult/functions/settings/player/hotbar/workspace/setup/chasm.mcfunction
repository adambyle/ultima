function ult:data/player/get
clear @s #ult:map_items/chasm

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.axe
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/axe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.sword
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.shield
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/shield
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.gun
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/gun
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.charm
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/one_charm
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:diamond_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/chasm/sword
execute unless data entity @s EnderItems[{id: "minecraft:diamond_axe"}] run loot replace entity @s inventory.2 loot ult:map_items/chasm/axe
execute unless data entity @s EnderItems[{id: "minecraft:spyglass"}] run loot replace entity @s inventory.1 loot ult:map_items/chasm/gun
execute unless data entity @s EnderItems[{id: "minecraft:slime_ball"}] run loot replace entity @s inventory.1 loot ult:map_items/chasm/one_charm
execute unless data entity @s EnderItems[{id: "minecraft:shield"}] run loot replace entity @s inventory.3 loot ult:map_items/chasm/shield
