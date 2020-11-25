scoreboard players set @s queue 0
function uub:respawn
scoreboard players remove @a[tag=play,scores={queue=1..}] queue 1
