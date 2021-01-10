execute as @a[tag=respawn] run function uub:start/swapin
execute as @a[tag=alive] run function uub:tp
execute if score randmap q matches 1.. as @a[tag=!alive] run function uub:tp
execute as @a[team=play] run function uub:items
scoreboard players set game q 1

execute if score map q matches 5 run scoreboard players set event_timer n 20
execute if score map q matches 14 run scoreboard players set thunder event_timer 40
execute if score map q matches 14 run scoreboard players set event_timer n 200
execute if score map q matches 15 run scoreboard players set event_timer n 100
execute if score map q matches 15 run scoreboard players set @a event_timer 0
kill @e[type=trident]
kill @e[type=item]

execute as @a run attribute @s generic.movement_speed modifier remove 4fb0fab4-429d-4170-96ca-71b1cb95416d
execute as @a run attribute @s generic.attack_damage modifier remove b82177e2-ce24-43af-bd44-9536415f25eb
execute as @a run attribute @s generic.armor modifier remove d540d8d4-2b26-4d51-8424-5651dff35387
execute as @a run attribute @s generic.max_health modifier remove 4f7f1be4-2ff1-4f96-b42f-96b8553c28b2

execute as @a[gamemode=spectator] run function uub:tp
