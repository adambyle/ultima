execute at @s if score @s chest_type = #empty chest_type run function uub:chest/empty
execute at @s if score @s chest_type = #common chest_type run function uub:chest/common
execute at @s if score @s chest_type = #uncommon chest_type run function uub:chest/uncommon
execute at @s if score @s chest_type = #rare chest_type run function uub:chest/rare
execute at @s if score @s chest_type = #epic chest_type run function uub:chest/epic
execute at @s if score @s chest_type = #ultimate chest_type run function uub:chest/ultimate
