function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.ingot
execute if data entity @s Inventory[{id: "minecraft:netherite_ingot"}] run scoreboard players reset .hotbar var
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/ingot
function ult:items/give

title @s actionbar {"text": "Hold a tool and crouch to upgrade the tool. Hold nothing to upgrade an armor piece.", "italic": true}
