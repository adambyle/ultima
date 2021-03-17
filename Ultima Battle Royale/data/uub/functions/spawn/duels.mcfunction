scoreboard players set #flag game_state 1
function uub:start/round
execute as @a[tag=alive] run function uub:spawn
execute unless entity @a[tag=alive] run function uub:spawn/next
function uub:spawn/next
