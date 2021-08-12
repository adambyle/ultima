execute unless entity @a[tag=alive] run tag @a[scores={queue=1}] add alive
scoreboard players reset @a[scores={queue=1}] queue
function ult:spawn/queue_advance

tag @a[scores={queue=1}] add alive
scoreboard players reset @a[scores={queue=1}] queue
function ult:spawn/queue_advance
