function ult:data/player/get_nbt
execute if score .map flag = flag.map.manor const run function ult:spawn/items/lost/manor
execute if score .map flag = flag.map.woodlands const run function ult:spawn/items/lost/woodlands
execute if score .map flag = flag.map.dungeon const run function ult:spawn/items/lost/dungeon
execute if score .map flag = flag.map.abyss const run function ult:spawn/items/lost/abyss
execute if score .map flag = flag.map.citadel const run function ult:spawn/items/lost/citadel
execute if score .map flag = flag.map.wasteland const run function ult:spawn/items/lost/wasteland
execute if score .map flag = flag.map.town_square const run function ult:spawn/items/lost/town_square
execute if score .map flag = flag.map.last_stand const run function ult:spawn/items/lost/last_stand
execute if score .map flag matches 9 run function ult:spawn/items/lost/frost
execute if score .map flag matches 10 run function ult:spawn/items/lost/shroom
execute if score .map flag matches 11 run function ult:spawn/items/lost/hell
execute if score .map flag matches 12 run function ult:spawn/items/lost/frontier
execute if score .map flag matches 13 run function ult:spawn/items/lost/reflection
execute if score .map flag matches 14 run function ult:spawn/items/lost/dracula
execute if score .map flag matches 15 run function ult:spawn/items/lost/avanto
execute if score .map flag matches 16 run function ult:spawn/items/lost/boxing
execute if score .map flag matches 17 run function ult:spawn/items/lost/ancient
execute if score .map flag matches 18 run function ult:spawn/items/lost/marooned
