# Spawn the player that's first in the queue
execute as @a[scores={queue=1}] run function uub:spawn

# Decrease everyone else's wait time
scoreboard players remove @a[scores={queue=1..}] queue 1
