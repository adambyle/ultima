execute as @a[tag=respawn] run function uub:start/swapin
execute as @a[tag=alive] run function uub:tp
execute if score randmap q matches 1.. as @a[tag=!alive] run function uub:tp
execute as @a[team=play] run function uub:items
scoreboard players set game q 1

execute if score map q matches 5 run scoreboard players set event_timer n 1
