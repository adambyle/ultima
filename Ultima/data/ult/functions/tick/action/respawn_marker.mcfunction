function ult:data/root
tag @a remove temp
execute as @a if score @s pn = @e[tag=root, limit=1] pn run tag @s add temp

scoreboard players operation #time _var = @s respawn
scoreboard players set #const _var 20
scoreboard players add #time _var 19
scoreboard players operation #time _var /= #const _var

loot replace block 0 0 0 container.0 loot ult:tech/respawn_marker
data modify entity @s CustomName set from block 0 0 0 Items[0].tag.display.Name

scoreboard players operation #time _var = @s respawn
scoreboard players set #const _var 5
scoreboard players operation #time _var %= #const _var
execute if score #time _var matches 0 at @s run playsound block.note_block.hat master @a ~ ~ ~ 1.2 0.7

scoreboard players operation #time _var = @s respawn
scoreboard players set #const _var 20
scoreboard players operation #time _var %= #const _var
execute if score #time _var matches 0 at @s run playsound block.note_block.pling master @a ~ ~ ~ 2.4 1.4
