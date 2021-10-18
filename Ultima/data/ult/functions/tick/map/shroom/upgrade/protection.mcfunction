execute store success score .upgrade var if data entity @s Inventory[{tag: {Enchantments: [{id: "minecraft:protection", lvl: 2s}]}}]
execute if score .upgrade var matches 1 run title @s actionbar {"text": "Granted Protection III", "color": "aqua"}
execute if score .upgrade var matches 1 at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 4 1.3
execute if score .upgrade var matches 1 run item modify entity @s armor.feet ult:maps/shroom/prot3
execute if score .upgrade var matches 1 run item modify entity @s armor.legs ult:maps/shroom/prot3
execute if score .upgrade var matches 1 run item modify entity @s armor.chest ult:maps/shroom/prot3
execute if score .upgrade var matches 1 run item modify entity @s armor.head ult:maps/shroom/prot3

execute store success score .upgrade var if data entity @s Inventory[{tag: {Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}]
execute if score .upgrade var matches 1 at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 4 1
execute if score .upgrade var matches 1 run title @s actionbar {"text": "Granted Protection II", "color": "aqua"}
execute if score .upgrade var matches 1 run item modify entity @s armor.feet ult:maps/shroom/prot2
execute if score .upgrade var matches 1 run item modify entity @s armor.legs ult:maps/shroom/prot2
execute if score .upgrade var matches 1 run item modify entity @s armor.chest ult:maps/shroom/prot2
execute if score .upgrade var matches 1 run item modify entity @s armor.head ult:maps/shroom/prot2

execute store success score .upgrade var unless data entity @s Inventory[{tag: {Enchantments: [{id: "minecraft:protection"}]}}]
execute if score .upgrade var matches 1 run title @s actionbar {"text": "Granted Protection I", "color": "aqua"}
execute if score .upgrade var matches 1 at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 4 0.7
execute if score .upgrade var matches 1 run item modify entity @s armor.feet ult:maps/shroom/prot1
execute if score .upgrade var matches 1 run item modify entity @s armor.legs ult:maps/shroom/prot1
execute if score .upgrade var matches 1 run item modify entity @s armor.chest ult:maps/shroom/prot1
execute if score .upgrade var matches 1 run item modify entity @s armor.head ult:maps/shroom/prot1
