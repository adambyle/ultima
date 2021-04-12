tag @a remove participating
tag @a[tag=player] add participating

kill @e[type=item,tag=static_item]
kill @e[type=!player, tag=!static_item, tag=!text_display]

execute as @a run attribute @s generic.armor base set 0
execute as @a run attribute @s generic.armor_toughness base set 0
execute as @a run attribute @s generic.max_health base set 20
execute as @a run attribute @s generic.attack_speed base set 4
execute as @a run attribute @s generic.attack_damage base set 1
execute as @a run attribute @s generic.movement_speed base set 0.1

# Map specific start functions
execute if score #server map matches 2 run function uub:start/map/woodlands
execute if score #server map matches 3 run function uub:start/map/dungeon
execute if score #server map matches 5 run function uub:start/map/citadel
execute if score #server map matches 7 run function uub:start/map/townsquare
execute if score #server map matches 13 run function uub:start/map/reflection
execute if score #server map matches 14 run function uub:start/map/dracula
