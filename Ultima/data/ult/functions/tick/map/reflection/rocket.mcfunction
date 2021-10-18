# Replenish infinite firework rockets, colored based on player number
    clear @s firework_rocket
    execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.reflection.rocket
    execute if score @s pn matches 1 run loot replace block 0 0 0 container.0 loot ult:map_items/reflection/rocket_red
    execute if score @s pn matches 2 run loot replace block 0 0 0 container.0 loot ult:map_items/reflection/rocket_blue
    execute if score @s pn matches 3 run loot replace block 0 0 0 container.0 loot ult:map_items/reflection/rocket_green
    execute if score @s pn matches 4 run loot replace block 0 0 0 container.0 loot ult:map_items/reflection/rocket_yellow
    function ult:items/give
