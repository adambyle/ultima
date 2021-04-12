function uub:data/player/get_nbt

clear @s netherite_ingot
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.abyss.ingot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/ingot"
function uub:spawn/items/give

clear @s potion
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.abyss.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/lev_pot"
function uub:spawn/items/give

clear @s arrow
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.abyss.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/arrows"
function uub:spawn/items/give

replaceitem entity @s armor.feet diamond_boots{Unbreakable:1b,Enchantments:[{id:"protection",lvl:2}]}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b,Enchantments:[{id:"protection",lvl:2}]}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b,Enchantments:[{id:"protection",lvl:2}]}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b,Enchantments:[{id:"protection",lvl:2}]}
scoreboard players set @s event -1
