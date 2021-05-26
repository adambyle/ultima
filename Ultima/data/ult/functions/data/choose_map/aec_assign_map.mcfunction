summon area_effect_cloud ~ ~ ~ {Tags: ["choose_map"]}
execute as @e[tag=choose_map] unless score @s map matches 1.. run scoreboard players operation @s map = #temp _var

scoreboard players add #temp _var 1
execute if score #temp _var > #max_default map unless score #temp _var matches 13.. run scoreboard players set #temp _var 13
execute unless score #temp _var > #max_fandom map run function ult:data/choose_map/aec_assign_map
