function ult:data/root
execute as @a[tag=player] if score @s map = @e[tag=root,limit=1] map run scoreboard players add @e[tag=root] _var 1

scoreboard players set #temp _var 0
execute unless score @s _var matches 0 run function ult:data/choose_map/summon
kill @s
