# Leave the lobby team
    team leave @s

# Different teleportation depending on map
    execute if score .map flag = flag.map.manor const run function ult:tp/manor
    execute if score .map flag = flag.map.woodlands const run function ult:tp/woodlands
    execute if score .map flag = flag.map.dungeon const run function ult:tp/dungeon
    execute if score .map flag = flag.map.abyss const run function ult:tp/abyss
    execute if score .map flag = flag.map.citadel const run function ult:tp/citadel
    execute if score .map flag = flag.map.wasteland const run function ult:tp/wasteland
    execute if score .map flag = flag.map.town_square const run function ult:tp/town_square
    execute if score .map flag = flag.map.last_stand const run function ult:tp/last_stand
    execute if score .map flag = flag.map.permafrost const run function ult:tp/permafrost
    execute if score .map flag = flag.map.shroom const run function ult:tp/shroom
    execute if score .map flag = flag.map.haven const run function ult:tp/haven
    execute if score .map flag = flag.map.frontier const run function ult:tp/frontier
    execute if score .map flag = flag.map.reflection const run function ult:tp/reflection
    execute if score .map flag = flag.map.dracula const run function ult:tp/dracula
    execute if score .map flag = flag.map.avanto const run function ult:tp/avanto
    execute if score .map flag = flag.map.boxing const run function ult:tp/boxing
    execute if score .map flag = flag.map.ancient const run function ult:tp/ancient
    execute if score .map flag = flag.map.marooned const run function ult:tp/marooned
    execute if score .map flag = flag.map.hill const run function ult:tp/hill
    execute if score .map flag = flag.map.bathhouse const run function ult:tp/bathhouse
    execute if score .map flag = flag.map.chasm const run function ult:tp/chasm
