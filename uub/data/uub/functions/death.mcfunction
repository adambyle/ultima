gamemode spectator
execute as @a run function uub:items/refill
function uub:items
tag @s remove alive

scoreboard players set @s qdeath 2

execute if score mode q matches 1 run function uub:death/classic
execute if score mode q matches 2 run function uub:death/duels
execute if score mode q matches 3 run function uub:death/brawl

execute if score mode q matches 1 run scoreboard players set @s kills 0
execute if score mode q matches 3 run scoreboard players remove @s kills 1
scoreboard players set @a[scores={kills=..0}] kills 0
execute unless score noplay debug matches 1 run scoreboard players add @s s.deaths 1
scoreboard players add @s a.deaths 1

tag @a remove player
tag @s add player
execute as @e[type=#arrows] if score @s pn = @r[tag=player] pn run kill @s
execute as @e[type=potion] if score @s pn = @r[tag=player] pn run kill @s
execute as @e[type=trident] if score @s pn = @r[tag=player] pn run kill @s
execute as @a if score @s last_attacker = @r[tag=player] pn run scoreboard players set @s last_attacker 0

scoreboard players reset @s pn
