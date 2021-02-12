execute as @s[team=!boss] if score #server map matches 1 run function uub:spawn/items/lost/manor
execute as @s[team=!boss] if score #server map matches 2 run function uub:spawn/items/lost/woodlands

execute as @s[team=boss] if score #server map matches 1 run function uub:spawn/items/lost_boss/manor
execute as @s[team=boss] if score #server map matches 2 run function uub:spawn/items/lost_boss/woodlands
