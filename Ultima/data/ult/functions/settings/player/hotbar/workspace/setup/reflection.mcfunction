function ult:data/player/get_nbt
clear @s #ult:map_items/reflection

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.sword
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/crossbow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.rocket
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/arrows
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.pearls
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/pearl
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:stone_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/reflection/sword
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/reflection/crossbow
execute unless data entity @s EnderItems[{id: "minecraft:firework_rocket"}] run loot replace entity @s inventory.2 loot ult:map_items/reflection/arrows
execute unless data entity @s EnderItems[{id: "minecraft:ender_pearl"}] run loot replace entity @s inventory.3 loot ult:map_items/reflection/pearl
