function ult:data/player/get_nbt

clear @s netherite_ingot
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.abyss.ingot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/abyss/ingot"
function ult:spawn/items/give

clear @s splash_potion
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.abyss.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/abyss/lev_pot"
function ult:spawn/items/give

clear @s arrow
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.abyss.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/abyss/arrows"
function ult:spawn/items/give

item replace entity @s armor.feet with diamond_boots{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
item replace entity @s armor.head with diamond_helmet{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
scoreboard players set @s event -1
