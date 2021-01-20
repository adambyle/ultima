execute as @s[team=!boss] run function uub:spawn/assign_pn

tag @s[team=!boss] add alive
clear @s
effect clear @s
effect give @s instant_health 1 3 true
gamemode adventure

function uub:data/player/reset_waits

execute if score #server map matches 1 run function uub:spawn/maps/manor
execute if score #server map matches 2 run function uub:spawn/maps/woodlands
execute if score #server map matches 3 run function uub:spawn/maps/dungeon
execute if score #server map matches 4 run function uub:spawn/maps/abyss
execute if score #server map matches 5 run function uub:spawn/maps/citadel
execute if score #server map matches 13 run function uub:spawn/maps/reflection
execute if score #server map matches 14 run function uub:spawn/maps/dracula
execute if score #server map matches 15 run function uub:spawn/maps/avanto

function uub:tp
execute as @a at @s run playsound item.totem.use master @s ~ ~ ~ 2 0.7
