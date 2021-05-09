# Spawn the player that's first in the queue
execute as @a[scores={queue=1}] run function ult:spawn
function ult:spawn/queue_advance
