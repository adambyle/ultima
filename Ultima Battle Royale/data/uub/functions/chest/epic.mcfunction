setblock ~ ~-1 ~ purple_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest_type = #epic chest_type

data merge block ~ ~ ~ {CustomName: '{"text": "Epic Barrel"}', LootTable: "uub:chests/epic"}
