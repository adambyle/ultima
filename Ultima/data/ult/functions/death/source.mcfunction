function ult:data/root

tag @e remove temp
tag @a[gamemode=spectator] add temp
tag @e[type=area_effect_cloud] add temp
tag @e[type=armor_stand] add temp
tag @s add temp

execute if score #server map matches 4 if score @s altitude matches ..12 run scoreboard players set @r[tag=root] deathsource 1

execute if score @s deathsource matches 1 as @e[sort=nearest, limit=1, tag=!temp, distance=..5] if entity @s[type=fishing_bobber] run scoreboard players set @r[tag=root] deathsource 2

execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=#arrows, distance=..10] run scoreboard players set @r[tag=root] deathsource 3

execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=potion, distance=..5, tag=!fireball_potion] run scoreboard players set @r[tag=root] deathsource 4

execute if score @s deathsource matches 3 if score #server map matches 5 run scoreboard players set @r[tag=root] deathsource 5

execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[nbt={SelectedItem: {id: "minecraft:flint"}}, distance=..5] run scoreboard players set @r[tag=root] deathsource 6

execute store result score #fire _var run data get entity @s Fire
execute if score #fire _var matches 1.. run scoreboard players set @s deathsource 7
execute at @s if block ~ ~ ~ #fire run scoreboard players set @s deathsource 7

execute at @s if block ~ ~ ~ lava run scoreboard players set @s deathsource 8
