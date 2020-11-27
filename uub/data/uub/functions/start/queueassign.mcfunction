execute unless score i n matches 1.. run scoreboard players set i n 1
scoreboard players set valid n 1
execute as @a[team=play] if score @s queue = i n run scoreboard players set valid n 0
execute if score valid n matches 1 run scoreboard players operation @s queue = i n
scoreboard players add i n 1
execute if score valid n matches 1 run scoreboard players reset i n
execute if score valid n matches 0 run function uub:start/queueassign
