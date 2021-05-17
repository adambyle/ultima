function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.fish
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/fish"
function ult:spawn/items/give
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
