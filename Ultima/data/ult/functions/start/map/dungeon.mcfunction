# Reset potions (from previous game)
    execute at @e[tag=dungeon_potion] run setblock ~ ~ ~ brewing_stand
    execute at @e[tag=dungeon_potion] run data remove block ~ ~ ~ Items
    execute at @e[tag=dungeon_potion] run kill @e[type=falling_block, distance=..2]

# Potion timer init
    scoreboard players set .map event 50
