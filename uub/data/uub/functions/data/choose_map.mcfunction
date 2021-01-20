execute if score #flag map = #cycle map run scoreboard players add #server map 1
execute if score #server map > #max_default map run scoreboard players set #server map 13
execute if score #server map > #max_fandom map run scoreboard players set #server map 1

scoreboard players set #temp _var 1
function uub:data/choose_map/aec_assign_map

say @e[scores={map=5}]
