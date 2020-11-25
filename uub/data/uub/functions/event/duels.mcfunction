execute as @a[tag=alive] run function uub:tp
execute as @a[team=play] run function uub:items
execute as @a[team=play,tag=!alive] run function uub:respawn
scoreboard players set game q 1
