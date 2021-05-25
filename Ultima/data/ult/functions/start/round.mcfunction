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
gamerule fireDamage false
gamerule naturalRegeneration false
gamerule fallDamage false
gamerule drowningDamage false

# Map specific start functions
execute if score #server map matches 2 run function ult:start/map/woodlands
execute if score #server map matches 3 run function ult:start/map/dungeon
execute if score #server map matches 5 run function ult:start/map/citadel
execute if score #server map matches 7 run function ult:start/map/town_square
execute if score #server map matches 8 run function ult:start/map/last_stand
execute if score #server map matches 13 run function ult:start/map/reflection
execute if score #server map matches 14 run function ult:start/map/dracula
execute if score #server map matches 17 run function ult:start/map/ancient
execute if score #server map matches 18 run function ult:start/map/marooned
function ult:start/map/reset

execute if score #flag game_mode = #duels game_mode run scoreboard objectives setdisplay sidebar display_health
execute if score #flag game_mode = #royale game_mode run scoreboard objectives setdisplay sidebar score
execute if score #flag game_mode = #brawl game_mode run scoreboard objectives setdisplay sidebar score

scoreboard players set @a health 20
