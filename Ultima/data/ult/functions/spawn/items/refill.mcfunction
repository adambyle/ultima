function ult:data/player/get_nbt
execute if score .map flag = flag.map.manor const run function ult:spawn/items/refills/manor
execute if score .map flag = flag.map.woodlands const run function ult:spawn/items/refills/woodlands
execute if score .map flag = flag.map.dungeon const run function ult:spawn/items/refills/dungeon
execute if score .map flag = flag.map.abyss const run function ult:spawn/items/refills/abyss
execute if score .map flag = flag.map.citadel const run function ult:spawn/items/refills/citadel
execute if score .map flag = flag.map.wasteland const run function ult:spawn/items/refills/wasteland
execute if score .map flag = flag.map.town_square const run function ult:spawn/items/refills/town_square
execute if score .map flag = flag.map.last_stand const run function ult:spawn/items/refills/last_stand
execute if score .map flag matches 9 run function ult:spawn/items/refills/frost
execute if score .map flag matches 10 run function ult:spawn/items/refills/shroom
execute if score .map flag matches 11 run function ult:spawn/items/refills/hell
execute if score .map flag matches 12 run function ult:spawn/items/refills/frontier
execute if score .map flag matches 13 run function ult:spawn/items/refills/reflection
execute if score .map flag matches 14 run function ult:spawn/items/refills/dracula
execute if score .map flag matches 15 run function ult:spawn/items/refills/avanto
execute if score .map flag matches 16 run function ult:spawn/items/refills/boxing
execute if score .map flag matches 17 run function ult:spawn/items/refills/ancient
execute if score .map flag matches 18 run function ult:spawn/items/refills/marooned
