function ult:data/root

# Clear glass from reflection map
    execute if score @s pn matches 1 run fill 95 31 1 125 31 31 white_stained_glass replace red_stained_glass
    execute if score @s pn matches 2 run fill 95 31 1 125 31 31 white_stained_glass replace blue_stained_glass
    execute if score @s pn matches 3 run fill 95 31 1 125 31 31 white_stained_glass replace green_stained_glass
    execute if score @s pn matches 4 run fill 95 31 1 125 31 31 white_stained_glass replace yellow_stained_glass

# Untether players from self
    execute as @a[tag=player] if score @s tether = @r[tag=root] pn run scoreboard players set @s tether -1
    execute as @a[tag=player] if score @s event.soul = @r[tag=root] pn run scoreboard players set @s event.soul 0

# Destroy owned projectiles
    execute as @e[type=#ult:projectiles] run function ult:death/kill_projectiles
    execute as @e[tag=prism] if score @s pn = @r[tag=root] pn run kill @s

# Reset properties of living players
    tag @s remove alive
    scoreboard players reset @s pn
    scoreboard players reset @s health_display
    scoreboard players reset @s death
    scoreboard players reset @s kill

# Wait for next turn
    function ult:spawn/assign_queue

# Main menu
    function ult:settings/player/main

title @s actionbar ""
