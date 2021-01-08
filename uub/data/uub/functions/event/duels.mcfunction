execute as @a[tag=respawn] run function uub:start/swapin
execute as @a[tag=alive] run function uub:tp
execute if score randmap q matches 1.. as @a[tag=!alive] run function uub:tp
execute as @a[team=play] run function uub:items
scoreboard players set game q 1

execute if score map q matches 5 run scoreboard players set event_timer n 1

execute if score map q matches 5 run scoreboard players set event_timer n 20
execute if score map q matches 14 run scoreboard players set thunder event_timer 40
execute if score map q matches 14 run scoreboard players set event_timer n 200
execute if score map q matches 15 run scoreboard players set event_timer n 100
execute if score map q matches 15 run scoreboard players set @a event_timer 0
kill @e[type=trident]
kill @e[type=item]
