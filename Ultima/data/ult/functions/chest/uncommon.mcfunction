setblock ~ ~-1 ~ cyan_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest_type = #uncommon chest_type

data merge block ~ ~ ~ {CustomName: '{"text": "Uncommon Barrel"}', LootTable: "ult:chests/uncommon"}
