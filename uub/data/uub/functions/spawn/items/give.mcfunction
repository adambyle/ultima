# Give the player a specific item based on their current hotbar setting

# FORMAT FOR HOTBAR ASSIGNMENT
# scoreboard players operation #hotbar _var = @s z.item
# data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "loot table"

execute if data entity @s Inventory[{Slot:0b}] if score #hotbar _var matches 0 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:1b}] if score #hotbar _var matches 1 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:2b}] if score #hotbar _var matches 2 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:3b}] if score #hotbar _var matches 3 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:4b}] if score #hotbar _var matches 4 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:5b}] if score #hotbar _var matches 5 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:6b}] if score #hotbar _var matches 6 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:7b}] if score #hotbar _var matches 7 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:8b}] if score #hotbar _var matches 8 run loot give @s kill @e[limit=1,tag=loot_table_handler]
execute if data entity @s Inventory[{Slot:-106b}] if score #hotbar _var matches -1 run loot give @s kill @e[limit=1,tag=loot_table_handler]

execute unless data entity @s Inventory[{Slot:0b}] if score #hotbar _var matches 0 run loot replace entity @s hotbar.0 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:1b}] if score #hotbar _var matches 1 run loot replace entity @s hotbar.1 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:2b}] if score #hotbar _var matches 2 run loot replace entity @s hotbar.2 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:3b}] if score #hotbar _var matches 3 run loot replace entity @s hotbar.3 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:4b}] if score #hotbar _var matches 4 run loot replace entity @s hotbar.4 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:5b}] if score #hotbar _var matches 5 run loot replace entity @s hotbar.5 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:6b}] if score #hotbar _var matches 6 run loot replace entity @s hotbar.6 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:7b}] if score #hotbar _var matches 7 run loot replace entity @s hotbar.7 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:8b}] if score #hotbar _var matches 8 run loot replace entity @s hotbar.8 kill @e[limit=1,tag=loot_table_handler]
execute unless data entity @s Inventory[{Slot:-106b}] if score #hotbar _var matches -1 run loot replace entity @s weapon.offhand kill @e[limit=1,tag=loot_table_handler]
