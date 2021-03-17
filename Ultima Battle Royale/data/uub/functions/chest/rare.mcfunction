setblock ~ ~-1 ~ green_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest_type = #rare chest_type

data merge block ~ ~ ~ {CustomName: '{"text": "Rare Barrel"}', LootTable: "uub:chests/rare"}
