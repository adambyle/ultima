scoreboard players set #selected _var 0
execute unless data entity @s EnderItems[{Slot: 11b}] run scoreboard players set #selected _var 1
execute unless data entity @s EnderItems[{Slot: 20b}] run scoreboard players set #selected _var 2
execute unless data entity @s EnderItems[{Slot: 13b}] run scoreboard players set #selected _var 3
execute unless data entity @s EnderItems[{Slot: 22b}] run scoreboard players set #selected _var 4
execute unless data entity @s EnderItems[{Slot: 15b}] run scoreboard players set #selected _var 5
execute unless data entity @s EnderItems[{Slot: 24b}] run scoreboard players set #selected _var 6

execute if score #selected _var matches 1 run scoreboard players set @s y.spect_lobby 1
execute if score #selected _var matches 2 run scoreboard players set @s y.spect_lobby 2
execute if score #selected _var matches 3 run scoreboard players set @s y.spect_death 1
execute if score #selected _var matches 4 run scoreboard players set @s y.spect_death 2
execute if score #selected _var matches 5 run scoreboard players set @s y.spect_opt 1
execute if score #selected _var matches 6 run scoreboard players set @s y.spect_opt 2

execute if score #selected _var matches 1.. run function uub:settings/ender_chest/spectate
