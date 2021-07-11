tag @e remove temp
execute unless score .hotbar _var matches -2147483648..2147483647 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 0b}] if score .hotbar _var matches 0 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 1b}] if score .hotbar _var matches 1 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 2b}] if score .hotbar _var matches 2 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 3b}] if score .hotbar _var matches 3 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 4b}] if score .hotbar _var matches 4 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 5b}] if score .hotbar _var matches 5 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 6b}] if score .hotbar _var matches 6 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 7b}] if score .hotbar _var matches 7 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 8b}] if score .hotbar _var matches 8 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot:-106b}] if score .hotbar _var matches -1 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 10b}] if score .hotbar _var matches 10 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 11b}] if score .hotbar _var matches 11 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if data entity @s Inventory[{Slot: 12b}] if score .hotbar _var matches 12 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
data modify entity @e[tag=temp, limit=1] Item.id set from block 0 0 0 Items[0].id
data modify entity @e[tag=temp, limit=1] Item.Count set from block 0 0 0 Items[0].Count
data modify entity @e[tag=temp, limit=1] Item.tag set from block 0 0 0 Items[0].tag

execute unless data entity @s Inventory[{Slot: 0b}] if score .hotbar _var matches 0 run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 1b}] if score .hotbar _var matches 1 run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 2b}] if score .hotbar _var matches 2 run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 3b}] if score .hotbar _var matches 3 run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 4b}] if score .hotbar _var matches 4 run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 5b}] if score .hotbar _var matches 5 run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 6b}] if score .hotbar _var matches 6 run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 7b}] if score .hotbar _var matches 7 run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 8b}] if score .hotbar _var matches 8 run item replace entity @s hotbar.8 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot:-106b}] if score .hotbar _var matches -1 run item replace entity @s weapon.offhand from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 10b}] if score .hotbar _var matches 10 run item replace entity @s inventory.0 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 11b}] if score .hotbar _var matches 11 run item replace entity @s inventory.1 from block 0 0 0 container.0
execute unless data entity @s Inventory[{Slot: 12b}] if score .hotbar _var matches 12 run item replace entity @s inventory.2 from block 0 0 0 container.0
