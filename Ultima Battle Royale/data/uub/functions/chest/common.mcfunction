setblock ~ ~-1 ~ light_gray_wool
data remove block ~ ~ ~ Items
scoreboard players operation @s chest_type = #common chest_type

data merge block ~ ~ ~ {CustomName: '{"text": "Common Barrel"}', LootTable: "uub:chests/common"}
