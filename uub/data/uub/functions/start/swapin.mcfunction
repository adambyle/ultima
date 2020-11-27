scoreboard players set @s queue 0
function uub:respawn
scoreboard players remove @a[team=play,scores={queue=1..}] queue 1
