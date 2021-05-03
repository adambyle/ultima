execute if score #flag map = #cycle map run scoreboard players add #server map 1
execute if score #server map > #max_default map unless score #server map matches 13.. run scoreboard players set #server map 13
execute if score #server map > #max_fandom map run scoreboard players set #server map 1

scoreboard players set #temp _var 1
function ult:data/choose_map/aec_assign_map

execute if score #flag map = #random map run scoreboard players operation #server map = @e[tag=choose_map,limit=1,sort=random] map
scoreboard players operation #backup_random map = @e[tag=choose_map,limit=1,sort=random] map

scoreboard players set @e[tag=choose_map] _var 0
execute as @e[tag=choose_map] run function ult:data/choose_map/count_vote

execute if score #flag map = #vote map run scoreboard players operation #server map = @e[tag=choose_map,limit=1,sort=random] map
execute if score #flag map = #vote map unless entity @e[tag=choose_map] run scoreboard players operation #server map = #backup_random map

kill @e[tag=choose_map]
