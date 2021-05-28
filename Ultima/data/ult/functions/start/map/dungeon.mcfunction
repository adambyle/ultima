execute at @e[tag=dungeon_potion] run setblock ~ ~ ~ brewing_stand
execute at @e[tag=dungeon_potion] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] run kill @e[type=falling_block, distance=..2]
scoreboard players set .map event 40
