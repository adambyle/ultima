function uub:data/root

# Untether all players
execute as @a[tag=player,tag=!alive] if score @s tether = @r[tag=root] pn run scoreboard players set @s tether 0

# Kill all owned projectiles
execute as @e[type=#uub:projectiles] if score @s pn = @r[tag=root] pn run kill @s

# Reset pn
scoreboard players set @s pn 0
