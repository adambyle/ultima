tag @r[tag=player, limit=8] add alive
execute as @a[tag=!alive] run function ult:start/mode/multi/kick

difficulty normal
gamerule naturalRegeneration true
gamerule fallDamage true
gamerule keepInventory false

scoreboard players set #arch chest_type 4
function ult:chest/refill
