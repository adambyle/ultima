function ult:data/root

# Untether all players
execute as @a[tag=player] if score @s tether = @r[tag=root] pn run scoreboard players set @s tether 0

# Kill all owned projectiles
execute as @e[type=#ult:projectiles] run function ult:death/kill_projectiles

# Reset pn
scoreboard players set @s pn 0
