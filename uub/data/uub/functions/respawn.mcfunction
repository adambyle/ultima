gamemode adventure
function uub:spawn/assign_pn
function uub:tp
execute at @s run playsound item.totem.use master @a ~ ~ ~ 2 0.7
tag @s add alive
tag @s add fresh
scoreboard players set @s timer -1
