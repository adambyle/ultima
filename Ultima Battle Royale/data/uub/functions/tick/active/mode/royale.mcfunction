# Respawn players with no tether
tag @e remove temp
tag @a remove temp
execute if score #flag game_state matches 1 as @a[tag=player,tag=!alive,scores={tether=0}] run tag @s add temp
execute as @r[tag=temp] run function uub:respawn

# Tell dead players who they're tethered to
execute as @a[tag=player,tag=!alive] run function uub:tick/action/tether_notif

# Tell the players who is in the lead
execute as @a[tag=player, tag=alive] run scoreboard players operation @s _var = @s score
scoreboard players operation @a[tag=player, tag=alive] _var -= #server pn
effect give @a[tag=player, tag=alive, scores={_var=-1..}] glowing 1 0 true
effect clear @a[tag=player, tag=alive, scores={_var=..-2}] glowing
