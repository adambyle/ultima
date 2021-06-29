tag @a remove participating
tag @a[tag=player] add participating

kill @e[type=item, tag=static_item]
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
execute if score .map flag = flag.map.woodlands const run function ult:start/map/woodlands
execute if score .map flag = flag.map.dungeon const run function ult:start/map/dungeon
execute if score .map flag = flag.map.citadel const run function ult:start/map/citadel
execute if score .map flag = flag.map.town_square const run function ult:start/map/town_square
execute if score .map flag = flag.map.last_stand const run function ult:start/map/last_stand
execute if score .map flag matches 13 run function ult:start/map/reflection
execute if score .map flag matches 14 run function ult:start/map/dracula
execute if score .map flag matches 17 run function ult:start/map/ancient
execute if score .map flag matches 18 run function ult:start/map/marooned
function ult:start/map/reset

execute if score .game_mode flag = flag.game_mode.duels const run scoreboard objectives setdisplay sidebar health_display
execute if score .game_mode flag = flag.game_mode.royale const run scoreboard objectives setdisplay sidebar score
execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard objectives setdisplay sidebar score

scoreboard players reset * health_display
execute unless score .game_mode flag = flag.game_mode.duels const run scoreboard players set @a[tag=player] health_display 20
