tag @e remove temp
execute unless score .hotbar _var matches -2147483648..2147483647 at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 0 if data entity @s Inventory[{Slot: 0b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 1 if data entity @s Inventory[{Slot: 1b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 2 if data entity @s Inventory[{Slot: 2b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 3 if data entity @s Inventory[{Slot: 3b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 4 if data entity @s Inventory[{Slot: 4b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 5 if data entity @s Inventory[{Slot: 5b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 6 if data entity @s Inventory[{Slot: 6b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 7 if data entity @s Inventory[{Slot: 7b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 8 if data entity @s Inventory[{Slot: 8b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches -1 if data entity @s Inventory[{Slot:-106b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 10 if data entity @s Inventory[{Slot: 10b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 11 if data entity @s Inventory[{Slot: 11b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
execute if score .hotbar _var matches 12 if data entity @s Inventory[{Slot: 12b}] at @s run summon item ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:stone", Count: 1b}}
data modify entity @e[tag=temp, limit=1] Item.id set from block 0 0 0 Items[0].id
data modify entity @e[tag=temp, limit=1] Item.Count set from block 0 0 0 Items[0].Count
data modify entity @e[tag=temp, limit=1] Item.tag set from block 0 0 0 Items[0].tag
data modify entity @e[tag=temp, limit=1] Tags append value "static"

execute if score .hotbar _var matches 0 unless data entity @s Inventory[{Slot: 0b}] run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute if score .hotbar _var matches 1 unless data entity @s Inventory[{Slot: 1b}] run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute if score .hotbar _var matches 2 unless data entity @s Inventory[{Slot: 2b}] run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute if score .hotbar _var matches 3 unless data entity @s Inventory[{Slot: 3b}] run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute if score .hotbar _var matches 4 unless data entity @s Inventory[{Slot: 4b}] run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute if score .hotbar _var matches 5 unless data entity @s Inventory[{Slot: 5b}] run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute if score .hotbar _var matches 6 unless data entity @s Inventory[{Slot: 6b}] run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute if score .hotbar _var matches 7 unless data entity @s Inventory[{Slot: 7b}] run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute if score .hotbar _var matches 8 unless data entity @s Inventory[{Slot: 8b}] run item replace entity @s hotbar.8 from block 0 0 0 container.0
execute if score .hotbar _var matches -1 unless data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.offhand from block 0 0 0 container.0
execute if score .hotbar _var matches 10 unless data entity @s Inventory[{Slot: 10b}] run item replace entity @s inventory.0 from block 0 0 0 container.0
execute if score .hotbar _var matches 11 unless data entity @s Inventory[{Slot: 11b}] run item replace entity @s inventory.1 from block 0 0 0 container.0
execute if score .hotbar _var matches 12 unless data entity @s Inventory[{Slot: 12b}] run item replace entity @s inventory.2 from block 0 0 0 container.0
