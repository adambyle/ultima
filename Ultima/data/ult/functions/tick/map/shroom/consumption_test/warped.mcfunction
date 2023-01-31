# Test for enchanting capability
    execute store success score .enchant var positioned 13 20 47 if entity @s[distance=..4]
    execute store result score .count var run data get entity @s SelectedItem.Count
    execute if score .count var matches ..2 run scoreboard players set .enchant var 0
    execute if data entity @s Inventory[{id: "minecraft:chainmail_chestplate", tag: {Enchantments: [{id: "minecraft:projectile_protection", lvl: 3s}]}}] run scoreboard players set .enchant var 0
    execute if data entity @s Inventory[].tag.Enchantments[{id: "minecraft:protection"}] run scoreboard players set .enchant var 0
    execute if data entity @s Inventory[{id: "minecraft:chainmail_chestplate", tag: {Enchantments: [{id: "minecraft:projectile_protection", lvl: 3s}]}}] run title @s actionbar {"text": "Your armor is maxed.", "color": "gray"}
    execute if data entity @s Inventory[].tag.Enchantments[{id: "minecraft:protection"}] run title @s actionbar {"text": "You already have Protection; you cannot get Projectile Protection.", "color": "gray"}

# If can enchant
    execute if score .enchant var matches 1 run clear @s warped_fungus 3
    execute if score .enchant var matches 1 run function ult:tick/map/shroom/upgrade/projectile_protection

# Otherwise
    execute if score .enchant var matches 0 at @s run playsound entity.player.burp master @s ~ ~ ~ 4
    execute if score .enchant var matches 0 run clear @s warped_fungus 1
    execute if score .enchant var matches 0 run effect give @s regeneration 3 1
