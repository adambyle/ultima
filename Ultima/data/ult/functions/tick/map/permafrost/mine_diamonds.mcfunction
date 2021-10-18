execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 4 0.5

execute store result score .diamonds var run clear @s diamond 0

function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.permafrost.diamond
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/diamond
execute if score .diamonds var matches 3 run function ult:tick/map/permafrost/diamond_boots
execute if score .diamonds var matches ..2 unless data entity @s Inventory[{Slot: 100b}] run function ult:items/give
effect give @s instant_health


