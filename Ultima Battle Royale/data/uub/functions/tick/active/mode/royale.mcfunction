# Respawn players with no tether
tag @e remove temp
tag @a remove temp
execute if score #flag game_state matches 1 as @a[tag=player,tag=!alive,scores={tether=0}] run tag @s add temp
execute as @r[tag=temp] run function uub:respawn

# Tell dead players who they're tethered too
execute as @a[tag=player,tag=!alive] run function uub:tick/tether_notif
