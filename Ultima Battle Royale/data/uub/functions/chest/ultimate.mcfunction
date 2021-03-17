setblock ~ ~-1 ~ orange_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest_type = #ultimate chest_type

data merge block ~ ~ ~ {CustomName: '{"text": "Ultimate Barrel"}', LootTable: "uub:chests/ultimate"}
