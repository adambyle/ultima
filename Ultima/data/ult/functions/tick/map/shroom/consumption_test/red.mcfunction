# Test for enchanting capability
    execute store success score .enchant var positioned 13 20 47 if entity @s[distance=..4]
    execute store result score .count var run data get entity @s SelectedItem.Count
    execute if score .count var matches ..2 run scoreboard players set .enchant var 0
    execute if data entity @s Inventory[{id: "minecraft:bow", tag: {Enchantments: [{lvl: 3s}]}}] run scoreboard players set .enchant var 0
    execute if data entity @s Inventory[{id: "minecraft:iron_sword"}].tag.Enchantments run scoreboard players set .enchant var 0

# If can enchant
    execute if score .enchant var matches 1 run clear @s red_mushroom 3
    execute if score .enchant var matches 1 run function ult:tick/map/shroom/upgrade/bow

# Otherwise
    execute if score .enchant var matches 0 at @s run playsound entity.player.burp master @s ~ ~ ~ 4
    execute if score .enchant var matches 0 run clear @s red_mushroom 1
    execute if score .enchant var matches 0 run effect give @s regeneration 3 1
