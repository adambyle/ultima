scoreboard players remove .map event 1
execute if score .map event matches ..0 run loot give @a[tag=player, tag=alive] loot ult:map_items/town_square/emerald
execute if score .map event matches ..0 run scoreboard players set .map event 40
loot give @a[scores={damage_dealt=1..}] loot ult:map_items/town_square/emerald

execute as @a[scores={crouch_mode=1}, nbt={SelectedItem: {id: "minecraft:netherite_ingot"}}] run function ult:tick/active/map/town_square/upgrade_armor

data remove block 79 21 78 Items
data remove block 80 29 93 Items
data remove block 81 29 93 Items
data remove block 70 22 65 Items
data remove block 71 22 65 Items

execute as @e[type=villager] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
fill 75 22 73 79 22 73 wheat[age=7]
fill 75 22 71 79 22 71 wheat[age=7]
fill 75 21 71 79 21 73 farmland[moisture=7] replace dirt
