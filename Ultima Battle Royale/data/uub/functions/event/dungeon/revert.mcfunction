execute at @s run playsound item.armor.equip_iron master @s
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b}
scoreboard players operation #hotbar _var = @s z.dungeon.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/shield"
function uub:spawn/items/give
