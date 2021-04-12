execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.wasteland.meat
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wasteland/rabbit"
function uub:spawn/items/give
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
