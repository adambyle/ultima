function ult:data/root

tag @e remove temp
tag @a[gamemode=spectator] add temp
tag @e[type=marker] add temp
tag @e[type=armor_stand] add temp
tag @s add temp

execute if score .map flag = flag.map.abyss const if score @s altitude matches ..12 run scoreboard players set @r[tag=root] death_cause 1

execute if score @s death_cause matches 1 as @e[sort=nearest, limit=1, tag=!temp, distance=..5] if entity @s[type=fishing_bobber] run scoreboard players set @r[tag=root] death_cause 2

execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=#arrows, distance=..10] run scoreboard players set @r[tag=root] death_cause 3

execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=potion, distance=..5, tag=!fireball_potion] run scoreboard players set @r[tag=root] death_cause 4

execute if score @s death_cause matches 3 if score .map flag = flag.map.citadel const run scoreboard players set @r[tag=root] death_cause 5

execute if score @s death_cause matches 4 if score .map flag = flag.map.wasteland const run scoreboard players set @r[tag=root] death_cause 6
execute if score @s death_cause matches 4 if score .map flag matches 17 run scoreboard players set @r[tag=root] death_cause 6

execute store result score #fire _var run data get entity @s Fire
execute if score #fire _var matches 1.. run scoreboard players set @s death_cause 7
execute at @s if block ~ ~ ~ #fire run scoreboard players set @s death_cause 7

execute at @s if block ~ ~ ~ lava run scoreboard players set @s death_cause 8
