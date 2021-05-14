execute if score @s pn matches 1 run fill 95 31 1 125 31 31 white_stained_glass replace red_stained_glass
execute if score @s pn matches 2 run fill 95 31 1 125 31 31 white_stained_glass replace blue_stained_glass
execute if score @s pn matches 3 run fill 95 31 1 125 31 31 white_stained_glass replace green_stained_glass
execute if score @s pn matches 4 run fill 95 31 1 125 31 31 white_stained_glass replace yellow_stained_glass

tag @s remove alive
tag @a remove revenge
execute if score @r[tag=killer] tether = @s pn run tag @s add revenge
function ult:data/player/detach
scoreboard players set @s queue 0
scoreboard players set @s pn 0
scoreboard players set @s die 0
scoreboard players reset @s display_health

execute unless score @s y.spect_death matches 1.. run scoreboard players set @s y.spect_death 1
scoreboard players operation #spect_mode _var = @s y.spect_death
function ult:tick/action/not_playing

execute if score #flag game_mode = #duels game_mode run function ult:spawn/assign_queue
execute if score #flag game_mode = #brawl game_mode run function ult:spawn/assign_queue

effect clear @s glowing
