# Set up new players
    execute as @a unless score @s online matches 1 run function ult:join/welcome

# Clean up entities
    kill @e[type=item]
    clear @a[gamemode=!creative] cactus

# Test for button presses
    execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function ult:start/pressed
    execute if block 43 31 -9 polished_blackstone_button[powered=true] run function ult:settings/mode

# Map settings handler
    execute if score .map_menu flag = flag.map_menu.main const run function ult:settings/map/main/driver
    execute if score .map_menu flag = flag.map_menu.default const run function ult:settings/map/default/driver
    execute if score .map_menu flag = flag.map_menu.featured const run function ult:settings/map/featured/driver

# Use chestplate to show opt status
    execute as @a store result score @s _var run clear @s leather_chestplate 0
    item replace entity @a[tag=spectator, nbt=!{Inventory: [{id: "minecraft:leather_chestplate", Slot: 102b, tag: {display: {color: 3881787}}}]}] armor.chest with leather_chestplate{display: {color: 3881787}}
    item replace entity @a[tag=player, tag=!ready, nbt=!{Inventory: [{id: "minecraft:leather_chestplate", Slot: 102b, tag: {display: {color: 40559}}}]}] armor.chest with leather_chestplate{display: {color: 40559}}
    item replace entity @a[tag=player, tag=ready, nbt=!{Inventory: [{id: "minecraft:leather_chestplate", Slot: 102b, tag: {display: {color: 3750526}}}]}] armor.chest with leather_chestplate{display: {color: 3750526}}
    clear @a[scores={_var=2..}] leather_chestplate
