function ult:data/root
scoreboard players set @s _var 0
execute as @e[type=trident] run function ult:tick/maps/marooned/trident_ownership/test
