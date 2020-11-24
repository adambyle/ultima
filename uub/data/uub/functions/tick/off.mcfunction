execute as @a unless score @s gid = gid q run function uub:load
execute positioned 0 21 3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function uub:start
execute positioned 0 21 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] run function uub:settings/opt
execute positioned -3 22 0 if block ~ ~ ~ polished_blackstone_button[powered=true] run function uub:settings/mode
execute positioned 3 22 0 if block ~ ~ ~ polished_blackstone_button[powered=true] run function uub:settings/map
