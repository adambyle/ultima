scoreboard players set .bonus_countdown control 300
scoreboard players set .bonus_item control 1
kill @e[tag=bonus_countdown]

data remove block 0 1 0 Items
execute if score .map flag = flag.map.manor const run loot replace block 0 1 0 container.13 loot ult:bonus_items/manor
execute if score .map flag = flag.map.woodlands const run loot replace block 0 1 0 container.13 loot ult:bonus_items/woodlands
execute if score .map flag = flag.map.dungeon const run loot replace block 0 1 0 container.13 loot ult:bonus_items/dungeon
execute if score .map flag = flag.map.abyss const run loot replace block 0 1 0 container.13 loot ult:bonus_items/abyss
execute if score .map flag = flag.map.citadel const run loot replace block 0 1 0 container.13 loot ult:bonus_items/citadel
execute if score .map flag = flag.map.wasteland const run loot replace block 0 1 0 container.13 loot ult:bonus_items/wasteland
execute if score .map flag = flag.map.town_square const run loot replace block 0 1 0 container.13 loot ult:bonus_items/town_square
execute if score .map flag = flag.map.last_stand const run loot replace block 0 1 0 container.13 loot ult:bonus_items/last_stand
execute if score .map flag = flag.map.permafrost const run loot replace block 0 1 0 container.13 loot ult:bonus_items/permafrost
execute if score .map flag = flag.map.shroom const run loot replace block 0 1 0 container.13 loot ult:bonus_items/shroom
execute if score .map flag = flag.map.haven const run loot replace block 0 1 0 container.13 loot ult:bonus_items/haven
execute if score .map flag = flag.map.frontier const run loot replace block 0 1 0 container.13 loot ult:bonus_items/frontier

execute at @e[tag=bonus_item] run clone 0 1 0 0 1 0 ~ ~ ~
execute at @e[tag=bonus_item] run particle poof ~ ~ ~ 0 0 0 0.4 20

execute as @a[tag=player, tag=alive] at @s run playsound block.note_block.bell master @a ~ ~ ~ 4
execute as @a[tag=player, tag=alive] at @s run playsound block.note_block.bell master @a ~ ~ ~ 4 0.9
