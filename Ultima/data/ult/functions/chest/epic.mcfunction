setblock ~ ~-1 ~ purple_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest = #epic chest

data merge block ~ ~ ~ {CustomName: '{"text": "Epic Barrel"}', LootTable: "ult:chests/epic"}
