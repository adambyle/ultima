execute if score #server map matches 1 run function uub:spawn/items/refills/manor
execute if score #server map matches 2 run function uub:spawn/items/refills/woods
execute if score #server map matches 3 run function uub:spawn/items/refills/dungeon
execute if score #server map matches 4 run function uub:spawn/items/refills/abyss
execute if score #server map matches 5 run function uub:spawn/items/refills/citadel
execute if score #server map matches 13 run function uub:spawn/items/refills/reflection
execute if score #server map matches 14 run function uub:spawn/items/refills/dracula
execute if score #server map matches 15 run function uub:spawn/items/refills/avanto
execute unless score #flag game_mode > #royale game_mode run effect give @s instant_health 1 3 true
