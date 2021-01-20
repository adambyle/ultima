# Reset data and determine who the killer is
tag @s remove alive
tag @a remove killer
tag @a remove respawn
scoreboard players set @s queue 0
scoreboard players set @s pn 0
scoreboard players set @s bool.die 0
execute at @s run tag @p[scores={bool.kill=1..}] add killer
scoreboard players remove @a[tag=killer] bool.kill 1

gamemode spectator
function uub:tp

execute if score #flag game_mode = #duels game_mode run function uub:death/duels
execute if score #flag game_mode = #royale game_mode run function uub:death/royale
execute if score #flag game_mode = #brawl game_mode run function uub:death/brawl
execute if score #flag game_mode = #boss game_mode run function uub:death/boss

execute unless score #flag game_mode > #brawl game_mode run effect give @a instant_health 1 3 true
