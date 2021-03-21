scoreboard players operation #hotbar _var = @s z.citadel.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.citadel.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/axe"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.citadel.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/crossbow"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.citadel.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/shield"
function uub:spawn/items/give

replaceitem entity @s armor.feet golden_boots{Unbreakable:1b, Enchantments: [{id: "protection", lvl: 2}]}
replaceitem entity @s armor.legs golden_leggings{Unbreakable:1b, Enchantments: [{id: "projectile_protection", lvl: 3}]}
replaceitem entity @s armor.chest golden_chestplate{Unbreakable:1b, Enchantments: [{id: "projectile_protection", lvl: 3}]}
replaceitem entity @s armor.head golden_helmet{Unbreakable:1b, Enchantments: [{id: "protection", lvl: 2}]}

function uub:spawn/items/refills/citadel

attribute @s generic.armor base set 3

scoreboard players set @s citadel_rune 0
