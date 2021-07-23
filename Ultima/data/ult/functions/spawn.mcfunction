gamemode adventure
tag @s add alive
clear @s
effect clear @s
effect give @s instant_health 1 3 true

# Give a bit of spawn resistance (unless duels mode)
execute unless score .game_mode flag = flag.game_mode.duels const run effect give @s resistance 4 1

# Reset crucial objectives; assign unique player id
    scoreboard players reset @s queue
    scoreboard players reset @s pn
    scoreboard players reset @s death
    scoreboard players reset @s kill
    scoreboard players reset @s afk
    function ult:spawn/assign_pn
    scoreboard players reset @s health
    scoreboard players set @s health_display 20
    scoreboard players set @s respawn -1

# Teleport into the arena
    function ult:tp

# Map specifics
    execute if score .map flag = flag.map.manor const run function ult:spawn/maps/manor
    execute if score .map flag = flag.map.woodlands const run function ult:spawn/maps/woodlands
    execute if score .map flag = flag.map.dungeon const run function ult:spawn/maps/dungeon
    execute if score .map flag = flag.map.abyss const run function ult:spawn/maps/abyss
    execute if score .map flag = flag.map.citadel const run function ult:spawn/maps/citadel
    execute if score .map flag = flag.map.wasteland const run function ult:spawn/maps/wasteland
    execute if score .map flag = flag.map.town_square const run function ult:spawn/maps/town_square
    execute if score .map flag = flag.map.last_stand const run function ult:spawn/maps/last_stand
    execute if score .map flag = flag.map.permafrost const run function ult:spawn/maps/permafrost
    execute if score .map flag = flag.map.shroom const run function ult:spawn/maps/shroom
    execute if score .map flag = flag.map.hellscape const run function ult:spawn/maps/hellscape
    execute if score .map flag = flag.map.frontier const run function ult:spawn/maps/frontier
    execute if score .map flag = flag.map.reflection const run function ult:spawn/maps/reflection
    execute if score .map flag = flag.map.dracula const run function ult:spawn/maps/dracula
    execute if score .map flag = flag.map.avanto const run function ult:spawn/maps/avanto
    execute if score .map flag = flag.map.boxing const run function ult:spawn/maps/boxing
    execute if score .map flag = flag.map.ancient const run function ult:spawn/maps/ancient
    execute if score .map flag = flag.map.marooned const run function ult:spawn/maps/marooned
    execute if score .map flag = flag.map.hill const run function ult:spawn/maps/hill
    execute if score .map flag = flag.map.bathhouse const run function ult:spawn/maps/bathhouse

# Spec fx
    execute at @s run playsound item.totem.use master @a ~ ~ ~ 1 0.7
    title @s actionbar ""
