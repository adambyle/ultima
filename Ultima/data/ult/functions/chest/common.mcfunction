setblock ~ ~-1 ~ light_gray_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest = #common chest

data merge block ~ ~ ~ {CustomName: '{"text": "Common Barrel"}', LootTable: "ult:chests/common"}
