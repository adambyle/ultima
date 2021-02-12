# Reset data and determine who the killer is
function uub:death/proc

execute as @a[team=!boss,tag=player] run function uub:spawn/items/refill

tag @a remove killer
execute at @s run tag @p[scores={bool.kill=1..}] add killer
scoreboard players remove @a[tag=killer] bool.kill 1
execute if score #flag game_mode = #duels game_mode run function uub:death/duels
execute if score #flag game_mode = #royale game_mode run function uub:death/royale
execute if score #flag game_mode = #brawl game_mode run function uub:death/brawl
execute if score #flag game_mode = #boss game_mode run function uub:death/boss_rush
