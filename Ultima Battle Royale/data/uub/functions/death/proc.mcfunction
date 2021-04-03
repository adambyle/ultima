tag @s remove alive
tag @a remove revenge
execute if score @r[tag=killer] tether = @s pn run tag @s add revenge
function uub:data/player/detach
scoreboard players set @s queue 0
scoreboard players set @s pn 0
scoreboard players set @s bool.die 0

execute unless score @s y.spect_death matches 1.. run scoreboard players set @s y.spect_death 1
scoreboard players operation #spect_mode _var = @s y.spect_death
function uub:tick/action/not_playing

##execute as @a[tag=player, tag=alive] run function uub:tick/action/opt_prompt

execute if score #flag game_mode = #brawl game_mode run function uub:spawn/assign_queue
