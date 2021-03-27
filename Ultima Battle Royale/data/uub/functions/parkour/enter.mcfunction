execute unless score @s parkour matches 1.. run scoreboard players set @s parkour 1

function uub:parkour/tp
execute at @s run playsound item.chorus_fruit.teleport master @s
tag @s add parkour

function uub:parkour/menu
