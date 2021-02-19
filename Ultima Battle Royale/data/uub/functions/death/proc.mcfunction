tag @s remove alive
tag @a remove revenge
execute if score @r[tag=killer] tether = @s pn run tag @s add revenge
function uub:data/player/detach
scoreboard players set @s queue 0
scoreboard players set @s pn 0
scoreboard players set @s bool.die 0

gamemode spectator
function uub:tp

function uub:tick/opt_prompt/universal

execute if score #flag game_mode = #brawl game_mode run function uub:spawn/assign_queue
