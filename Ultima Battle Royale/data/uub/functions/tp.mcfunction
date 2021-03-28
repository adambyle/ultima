execute if score #server map matches 1 run function uub:tp/manor
execute if score #server map matches 2 run function uub:tp/woodlands
execute if score #server map matches 3 run function uub:tp/dungeon
execute if score #server map matches 4 run function uub:tp/abyss
execute if score #server map matches 5 run function uub:tp/citadel
execute if score #server map matches 13 run function uub:tp/reflection
execute if score #server map matches 14 run function uub:tp/dracula
execute if score #server map matches 15 run function uub:tp/avanto
execute if score #server map matches 16 run function uub:tp/boxing
execute if score #flag game_mode = #ultimate game_mode run function uub:tp/ultimate

execute as @s[gamemode=spectator] run function uub:tick/action/opt_prompt
