function ult:data/player/get

clear @s netherite_ingot
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.abyss.ingot
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/ingot
function ult:items/give

clear @s splash_potion
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.abyss.potion
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/lev_pot
function ult:items/give

clear @s arrow
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.abyss.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/arrows
function ult:items/give

item replace entity @s armor.feet with diamond_boots{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.legs with diamond_leggings{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.head with diamond_helmet{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
scoreboard players set @s event -1
