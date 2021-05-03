function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.pickaxe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/pickaxe"
execute as @s[nbt=!{Inventory: [{id: "minecraft:netherite_pickaxe"}]}] run function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/axe"
execute as @s[nbt=!{Inventory: [{id: "minecraft:netherite_axe"}]}] run function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.hoe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/hoe"
execute as @s[nbt=!{Inventory: [{id: "minecraft:netherite_hoe"}]}] run function ult:spawn/items/give

replaceitem entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_boots"}]}] armor.feet diamond_boots{Unbreakable:1b}
replaceitem entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_leggings"}]}] armor.legs diamond_leggings{Unbreakable:1b}
replaceitem entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_chestplate"}]}] armor.chest diamond_chestplate{Unbreakable:1b}
replaceitem entity @s[nbt=!{Inventory: [{id: "minecraft:netherite_helmet"}]}] armor.head diamond_helmet{Unbreakable:1b}

function ult:spawn/items/refills/ancient
