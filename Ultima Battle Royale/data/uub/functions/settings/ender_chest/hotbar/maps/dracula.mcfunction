clear @s #uub:map_items/dracula

scoreboard players operation #hotbar _var = @s z.dracula.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.weak
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/weak_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.harm
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/harm_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/crossbow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/one_arrow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.tri
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/trident"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/dracula/sword
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.1 loot uub:map_items/dracula/crossbow
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.2 loot uub:map_items/dracula/one_arrow
execute unless data entity @s EnderItems[{id:"minecraft:splash_potion", tag: {Potion: "minecraft:water"}}] run loot replace entity @s inventory.3 loot uub:map_items/dracula/weak_pot
execute unless data entity @s EnderItems[{id:"minecraft:splash_potion", tag: {Potion: "minecraft:harming"}}] run loot replace entity @s inventory.4 loot uub:map_items/dracula/harm_pot
execute unless data entity @s EnderItems[{id:"minecraft:trident"}] run loot replace entity @s inventory.5 loot uub:map_items/dracula/trident
