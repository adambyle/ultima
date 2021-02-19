# Reset data and determine who the killer is
execute as @a run function uub:spawn/items/refill

function uub:death/proc

tag @a remove killer
execute at @s run tag @p[scores={bool.kill=1..}] add killer
scoreboard players remove @a[tag=killer] bool.kill 1
execute if score #flag game_mode = #duels game_mode run function uub:death/duels
execute if score #flag game_mode = #royale game_mode run function uub:death/royale
execute if score #flag game_mode = #brawl game_mode run function uub:death/brawl
