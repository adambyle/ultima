tag @a remove alive
tag @a[team=play,limit=4,sort=random] add alive
scoreboard players set game q 1

scoreboard players reset * pn
scoreboard players reset i n
execute as @a[team=play] run function uub:start/pnassign

gamemode spectator @a[tag=!alive]
execute as @a run function uub:tp
execute as @a[team=play] run function uub:items/default

execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 1.5 
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 2

effect clear @a
