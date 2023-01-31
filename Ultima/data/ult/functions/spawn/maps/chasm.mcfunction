function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.sword
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.axe
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/axe
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.gun
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/gun
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.shield
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/shield
function ult:items/give

item replace entity @s armor.feet with netherite_boots{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 2s}]}
item replace entity @s armor.legs with netherite_leggings{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 2s}]}
item replace entity @s armor.chest with elytra{Unbreakable: true}
item replace entity @s armor.head with netherite_helmet{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 2s}]}

function ult:items/refills/chasm
scoreboard players set @s event.prism 0
