scoreboard players operation #hotbar _var = @s z.wastes.rabbit
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/rabbit"
function uub:spawn/items/give
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
