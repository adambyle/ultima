# Respawn players when there is room
scoreboard players set #temp pn 0
execute as @a[tag=player, tag=alive] run scoreboard players add #temp pn 1
execute as @a[tag=player, scores={respawn=0..}] run scoreboard players add #temp pn 1
execute if score #temp pn matches ..3 as @r[tag=player, tag=!alive, scores={queue=1, respawn=-1}] run function ult:respawn

# The leading player glows
effect give @a[tag=player, tag=alive, scores={score=3..}] glowing 999999 0 true
effect clear @a[tag=player, tag=alive, scores={score=..2}] glowing

# Tell dead players who they're tethered to
execute as @a[tag=player, scores={tether=1..}] run function ult:tick/action/tether_notif
