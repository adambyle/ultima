summon area_effect_cloud
execute as @e[type=area_effect_cloud] unless score @s map matches 1.. run scoreboard players operation @s map = #temp _var

scoreboard players add #temp _var 1
execute if score #temp _var > #max_default map run scoreboard players set #temp _var 13
execute unless score #temp _var > #max_fandom map run function uub:data/choose_map/aec_assign_map
