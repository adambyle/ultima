function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.meat
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/rabbit
function ult:items/give
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 4 0.5
