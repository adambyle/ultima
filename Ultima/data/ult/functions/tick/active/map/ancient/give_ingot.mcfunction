function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.ingot
execute if data entity @s Inventory[{id: "minecraft:netherite_ingot"}] run scoreboard players reset #hotbar _var
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/ingot"
function ult:spawn/items/give

title @s actionbar {"text": "Hold a tool and crouch to upgrade the tool. Hold nothing to upgrade an armor piece.", "italic": true}
