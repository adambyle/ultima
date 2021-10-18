function ult:data/player/get
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.bow

execute store success score .upgrade var run clear @s bow{Unenchanted: true}
execute if score .upgrade var matches 1 run title @s actionbar {"text": "Granted Power I", "color": "aqua"}
execute if score .upgrade var matches 1 at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 4 0.7
execute if score .upgrade var matches 1 run loot replace block 0 0 0 container.0 loot ult:map_items/shroom/bow/power1

execute store success score .upgrade var run clear @s bow{Enchantments: [{lvl: 1s}]}
execute if score .upgrade var matches 1 at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 4 1
execute if score .upgrade var matches 1 run title @s actionbar {"text": "Granted Power II", "color": "aqua"}
execute if score .upgrade var matches 1 run loot replace block 0 0 0 container.0 loot ult:map_items/shroom/bow/power2

execute store success score .upgrade var run clear @s bow{Enchantments: [{lvl: 2s}]}
execute if score .upgrade var matches 1 run title @s actionbar {"text": "Granted Power III", "color": "aqua"}
execute if score .upgrade var matches 1 at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 4 1.3
execute if score .upgrade var matches 1 run loot replace block 0 0 0 container.0 loot ult:map_items/shroom/bow/power3

function ult:items/give
