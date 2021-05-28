setblock ~ ~-1 ~ cyan_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest = #uncommon chest

data merge block ~ ~ ~ {CustomName: '{"text": "Uncommon Barrel"}', LootTable: "ult:chests/uncommon"}
