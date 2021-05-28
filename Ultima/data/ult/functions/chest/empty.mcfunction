setblock ~ ~-1 ~ black_wool
data remove block ~ ~ ~ Items
data remove block ~ ~ ~ LootTable
scoreboard players operation @s chest = #empty chest

data merge block ~ ~ ~ {CustomName: '{"text": "Empty Barrel"}'}
