execute if score @s pn matches 1 run fill 95 31 1 125 31 31 white_stained_glass replace red_stained_glass
execute if score @s pn matches 2 run fill 95 31 1 125 31 31 white_stained_glass replace blue_stained_glass
execute if score @s pn matches 3 run fill 95 31 1 125 31 31 white_stained_glass replace green_stained_glass
execute if score @s pn matches 4 run fill 95 31 1 125 31 31 white_stained_glass replace yellow_stained_glass

tag @s remove alive
execute store success score .revenge control if score @r[tag=killer] tether = @s pn
function ult:data/player/detach
scoreboard players set @s queue 0
scoreboard players set @s pn 0
scoreboard players set @s death 0
scoreboard players reset @s display_health

execute unless score @s y.spect_death matches 1.. run scoreboard players set @s y.spect_death 1
scoreboard players operation #spect_mode _var = @s y.spect_death
function ult:tick/action/not_playing

execute if score .game_mode flag = flag.game_mode.duels const run function ult:spawn/assign_queue
execute if score .game_mode flag = flag.game_mode.brawl const run function ult:spawn/assign_queue

effect clear @s glowing
