function ult:data/root
execute as @a[tag=player] if score @s vote = @e[tag=root, limit=1] control run scoreboard players add @e[tag=root] _var 1

scoreboard players set .temp _var 0
execute unless score @s _var matches 0 run function ult:data/map/choose_map/summon
kill @s
