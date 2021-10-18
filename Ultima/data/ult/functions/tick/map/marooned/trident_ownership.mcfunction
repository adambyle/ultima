# Test if player owns a trident
    function ult:data/root
    scoreboard players set @s var 0
    execute as @e[type=trident] run function ult:tick/map/marooned/trident_ownership/test
