# Different teleportation depending on map
    execute if score .map flag = flag.map.manor const run function ult:tp/manor
    execute if score .map flag = flag.map.woodlands const run function ult:tp/woodlands
    execute if score .map flag = flag.map.dungeon const run function ult:tp/dungeon
    execute if score .map flag = flag.map.abyss const run function ult:tp/abyss
    execute if score .map flag = flag.map.citadel const run function ult:tp/citadel
    execute if score .map flag = flag.map.wasteland const run function ult:tp/wasteland
    execute if score .map flag = flag.map.town_square const run function ult:tp/town_square
    execute if score .map flag = flag.map.last_stand const run function ult:tp/last_stand
    execute if score .map flag matches 9 run function ult:tp/permafrost
    execute if score .map flag matches 10 run function ult:tp/shroom
    execute if score .map flag matches 11 run function ult:tp/hellscape
    execute if score .map flag matches 12 run function ult:tp/frontier
    execute if score .map flag matches 13 run function ult:tp/reflection
    execute if score .map flag matches 14 run function ult:tp/dracula
    execute if score .map flag matches 15 run function ult:tp/avanto
    execute if score .map flag matches 16 run function ult:tp/boxing
    execute if score .map flag matches 17 run function ult:tp/ancient
    execute if score .map flag matches 18 run function ult:tp/marooned
