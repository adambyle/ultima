summon area_effect_cloud ~ ~ ~ {Tags: ["choose_map"]}
execute as @e[tag=choose_map] unless score @s control matches 0.. run scoreboard players operation @s control = .temp _var

scoreboard players add .temp _var 1
execute if score .temp _var > flag.map.end_default const unless score .temp _var > flag.map.start_fandom const run scoreboard players operation .temp _var = flag.map.start_fandom const
execute unless score .temp _var > flag.map.end_fandom const run function ult:data/map/choose_map/aec_assign_map
