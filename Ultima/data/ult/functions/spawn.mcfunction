tag @s add alive
tag @s remove parkour
tag @s remove timed
function ult:settings/ender_chest/main
clear @s
effect clear @s
effect give @s instant_health 1 3 true
execute unless score .game_mode flag = flag.game_mode.duels const run effect give @s resistance 4 1
gamemode adventure
team leave @s

tag @s remove key_shown
data modify storage ult:temp Key set value {playGame: true}
execute as @s[tag=!key_shown] run function ult:tick/action/key_point
execute if score .game_mode flag = flag.game_mode.duels const run data modify storage ult:temp Key set value {playDuels: true}
execute if score .game_mode flag = flag.game_mode.royale const run data modify storage ult:temp Key set value {playRoyale: true}
execute if score .game_mode flag = flag.game_mode.brawl const run data modify storage ult:temp Key set value {playBrawl: true}
execute as @s[tag=!key_shown] run function ult:tick/action/key_point
execute if score .map flag = flag.map.manor const run data modify storage ult:temp Key set value {playManor: true}
execute if score .map flag = flag.map.woodlands const run data modify storage ult:temp Key set value {playWoodlands: true}
execute if score .map flag = flag.map.dungeon const run data modify storage ult:temp Key set value {playDungeon: true}
execute if score .map flag = flag.map.abyss const run data modify storage ult:temp Key set value {playAbyss: true}
execute if score .map flag = flag.map.citadel const run data modify storage ult:temp Key set value {playCitadel: true}
execute if score .map flag = flag.map.wasteland const run data modify storage ult:temp Key set value {playWasteland: true}
execute if score .map flag = flag.map.town_square const run data modify storage ult:temp Key set value {playTownSquare: true}
execute if score .map flag = flag.map.last_stand const run data modify storage ult:temp Key set value {playLastStand: true}
execute if score .map flag matches 9 run data modify storage ult:temp Key set value {playPermafrost: true}
execute if score .map flag matches 10 run data modify storage ult:temp Key set value {playShroom: true}
execute if score .map flag matches 11 run data modify storage ult:temp Key set value {playHellscape: true}
execute if score .map flag matches 12 run data modify storage ult:temp Key set value {playFrontier: true}
execute if score .map flag matches 13 run data modify storage ult:temp Key set value {playReflection: true}
execute if score .map flag matches 14 run data modify storage ult:temp Key set value {playDracula: true}
execute if score .map flag matches 15 run data modify storage ult:temp Key set value {playAvanto: true}
execute if score .map flag matches 16 run data modify storage ult:temp Key set value {playBoxing: true}
execute if score .map flag matches 17 run data modify storage ult:temp Key set value {playAncient: true}
execute if score .map flag matches 18 run data modify storage ult:temp Key set value {playMarooned: true}
execute as @s[tag=!key_shown] run function ult:tick/action/key_point

scoreboard players reset @s queue
scoreboard players reset @s pn
function ult:spawn/assign_pn
scoreboard players set @s health_display 20

function ult:tp

execute if score .map flag = flag.map.manor const run function ult:spawn/maps/manor
execute if score .map flag = flag.map.woodlands const run function ult:spawn/maps/woodlands
execute if score .map flag = flag.map.dungeon const run function ult:spawn/maps/dungeon
execute if score .map flag = flag.map.abyss const run function ult:spawn/maps/abyss
execute if score .map flag = flag.map.citadel const run function ult:spawn/maps/citadel
execute if score .map flag = flag.map.wasteland const run function ult:spawn/maps/wasteland
execute if score .map flag = flag.map.town_square const run function ult:spawn/maps/town_square
execute if score .map flag = flag.map.last_stand const run function ult:spawn/maps/last_stand
execute if score .map flag matches 9 run function ult:spawn/maps/frost
execute if score .map flag matches 10 run function ult:spawn/maps/shroom
execute if score .map flag matches 11 run function ult:spawn/maps/hell
execute if score .map flag matches 12 run function ult:spawn/maps/frontier
execute if score .map flag matches 13 run function ult:spawn/maps/reflection
execute if score .map flag matches 14 run function ult:spawn/maps/dracula
execute if score .map flag matches 15 run function ult:spawn/maps/avanto
execute if score .map flag matches 16 run function ult:spawn/maps/boxing
execute if score .map flag matches 17 run function ult:spawn/maps/ancient
execute if score .map flag matches 18 run function ult:spawn/maps/marooned

execute at @s run playsound item.totem.use master @a[tag=!parkour] ~ ~ ~ 1 0.7

scoreboard players set @s afk 0

title @s actionbar ""
