tag @e remove temp
summon area_effect_cloud ~ ~ ~ {Tags:["temp","vote_map"]}
scoreboard players operation @e[tag=temp] map = @s map

scoreboard players add #temp _var 1
execute if score #temp _var < @s _var run function ult:data/choose_map/summon
