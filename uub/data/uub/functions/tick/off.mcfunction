execute as @a unless score @s gid = gid q run function uub:load/reload
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p if entity @s[tag=team_play] run function uub:start/ready
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p if entity @s[tag=team_spect] run function uub:start/not_opted
execute positioned 43 31 -9 if block ~ ~ ~ polished_blackstone_button[powered=true] run function uub:settings/mode

execute as @a[tag=team_play,nbt=!{EnderItems:[{id:"minecraft:lime_terracotta"}]},tag=menu.main] run function uub:settings/opt
execute as @a[tag=team_spect,nbt=!{EnderItems:[{id:"minecraft:blue_terracotta"}]},tag=menu.main] run function uub:settings/opt

clear @a leather_chestplate
replaceitem entity @a[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]},tag=team_play] armor.chest leather_chestplate{display:{color:65293}}
replaceitem entity @a[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]},tag=team_spect] armor.chest leather_chestplate{display:{color:4607}}
