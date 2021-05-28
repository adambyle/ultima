scoreboard players set @s chest 1

scoreboard players set #iter _var 0
execute if score #iter _var < #arch chest run function ult:chest/random/loop

scoreboard players set #min _var 1
scoreboard players set #max _var 5
scoreboard players operation @s chest < #max _var
scoreboard players operation @s chest > #min _var

function ult:chest/infer
