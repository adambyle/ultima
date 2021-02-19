tag @a remove participating
tag @a[tag=player] add participating

kill @e[type=item,tag=static_item]
time set noon

# Map specific start functions
execute if score #server map matches 2 run function uub:start/map/woodlands
execute if score #server map matches 4 run function uub:start/map/abyss
execute if score #server map matches 5 run function uub:start/map/dungeon
execute if score #server map matches 6 run function uub:start/map/citadel
execute if score #server map matches 14 run function uub:start/map/dracula
