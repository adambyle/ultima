execute if score #server map matches 1 run function ult:tp/manor
execute if score #server map matches 2 run function ult:tp/woodlands
execute if score #server map matches 3 run function ult:tp/dungeon
execute if score #server map matches 4 run function ult:tp/abyss
execute if score #server map matches 5 run function ult:tp/citadel
execute if score #server map matches 6 run function ult:tp/wasteland
execute if score #server map matches 7 run function ult:tp/town_square
execute if score #server map matches 8 run function ult:tp/last_stand
execute if score #server map matches 9 run function ult:tp/permafrost
execute if score #server map matches 10 run function ult:tp/shroom
execute if score #server map matches 11 run function ult:tp/hellscape
execute if score #server map matches 12 run function ult:tp/frontier
execute if score #server map matches 13 run function ult:tp/reflection
execute if score #server map matches 14 run function ult:tp/dracula
execute if score #server map matches 15 run function ult:tp/avanto
execute if score #server map matches 16 run function ult:tp/boxing
execute if score #server map matches 17 run function ult:tp/ancient
execute if score #server map matches 18 run function ult:tp/marooned
execute if score .game_mode flag = #ultimate game_mode run function ult:tp/ultimate

effect give @s[gamemode=spectator] night_vision 99999 0 true
