function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.ancient.pickaxe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/pickaxe
execute as @s[nbt=!{Inventory: [{id: "minecraft:netherite_pickaxe"}]}] run function ult:items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.ancient.axe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/axe
execute as @s[nbt=!{Inventory: [{id: "minecraft:netherite_axe"}]}] run function ult:items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.ancient.hoe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/hoe
execute as @s[nbt=!{Inventory: [{id: "minecraft:netherite_hoe"}]}] run function ult:items/give

item replace entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_boots"}]}] armor.feet with diamond_boots{Unbreakable: true}
item replace entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_leggings"}]}] armor.legs with diamond_leggings{Unbreakable: true}
item replace entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_chestplate"}]}] armor.chest with diamond_chestplate{Unbreakable: true}
item replace entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_helmet"}]}] armor.head with diamond_helmet{Unbreakable: true}

function ult:items/refills/ancient
