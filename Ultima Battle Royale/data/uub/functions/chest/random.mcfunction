scoreboard players set @s chest_type 1

scoreboard players set #iter _var 0
execute if score #iter _var < #arch chest_type run function uub:chest/random/loop

scoreboard players set #min _var 1
scoreboard players set #max _var 5
scoreboard players operation @s chest_type < #max _var
scoreboard players operation @s chest_type > #min _var

function uub:chest/infer
