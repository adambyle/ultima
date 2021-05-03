scoreboard players set #flag game_state 1
function ult:start/round
execute as @a[tag=alive] run function ult:spawn
execute unless entity @a[tag=alive] run function ult:spawn/next
function ult:spawn/next
execute as @a[tag=spectator, gamemode=spectator] run function ult:tp
