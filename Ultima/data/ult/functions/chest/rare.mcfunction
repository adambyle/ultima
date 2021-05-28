setblock ~ ~-1 ~ green_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest = #rare chest

data merge block ~ ~ ~ {CustomName: '{"text": "Rare Barrel"}', LootTable: "ult:chests/rare"}
