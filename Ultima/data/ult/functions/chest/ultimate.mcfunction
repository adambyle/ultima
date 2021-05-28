setblock ~ ~-1 ~ orange_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest = #ultimate chest

data merge block ~ ~ ~ {CustomName: '{"text": "Ultimate Barrel"}', LootTable: "ult:chests/ultimate"}
