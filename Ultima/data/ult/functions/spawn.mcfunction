tag @s add alive
tag @s remove parkour
tag @s remove timed
function ult:settings/ender_chest/main
clear @s
effect clear @s
effect give @s instant_health 1 3 true
effect give @s resistance 4 1
gamemode adventure
team leave @s

scoreboard players set @s showedkey 0
data modify storage ult:temp Key set value {playGame: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point
execute if score #flag game_mode = #duels game_mode run data modify storage ult:temp Key set value {playDuels: true}
execute if score #flag game_mode = #royale game_mode run data modify storage ult:temp Key set value {playRoyale: true}
execute if score #flag game_mode = #brawl game_mode run data modify storage ult:temp Key set value {playBrawl: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point
execute if score #server map matches 1 run data modify storage ult:temp Key set value {playManor: true}
execute if score #server map matches 2 run data modify storage ult:temp Key set value {playWoodlands: true}
execute if score #server map matches 3 run data modify storage ult:temp Key set value {playDungeon: true}
execute if score #server map matches 4 run data modify storage ult:temp Key set value {playAbyss: true}
execute if score #server map matches 5 run data modify storage ult:temp Key set value {playCitadel: true}
execute if score #server map matches 6 run data modify storage ult:temp Key set value {playWasteland: true}
execute if score #server map matches 7 run data modify storage ult:temp Key set value {playTownSquare: true}
execute if score #server map matches 8 run data modify storage ult:temp Key set value {playLastStand: true}
execute if score #server map matches 9 run data modify storage ult:temp Key set value {playPermafrost: true}
execute if score #server map matches 10 run data modify storage ult:temp Key set value {playShroom: true}
execute if score #server map matches 11 run data modify storage ult:temp Key set value {playHellscape: true}
execute if score #server map matches 12 run data modify storage ult:temp Key set value {playFrontier: true}
execute if score #server map matches 13 run data modify storage ult:temp Key set value {playReflection: true}
execute if score #server map matches 14 run data modify storage ult:temp Key set value {playDracula: true}
execute if score #server map matches 15 run data modify storage ult:temp Key set value {playAvanto: true}
execute if score #server map matches 16 run data modify storage ult:temp Key set value {playBoxing: true}
execute if score #server map matches 17 run data modify storage ult:temp Key set value {playAncient: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point

scoreboard players set @s pn 0
function ult:spawn/assign_pn
function ult:data/player/reset_waits

function ult:tp

execute if score #flag game_mode = #ultimate game_mode run function ult:spawn/ultimate
execute if score #server map matches 1 run function ult:spawn/maps/manor
execute if score #server map matches 2 run function ult:spawn/maps/woodlands
execute if score #server map matches 3 run function ult:spawn/maps/dungeon
execute if score #server map matches 4 run function ult:spawn/maps/abyss
execute if score #server map matches 5 run function ult:spawn/maps/citadel
execute if score #server map matches 6 run function ult:spawn/maps/wasteland
execute if score #server map matches 7 run function ult:spawn/maps/townsquare
execute if score #server map matches 8 run function ult:spawn/maps/laststand
execute if score #server map matches 9 run function ult:spawn/maps/frost
execute if score #server map matches 10 run function ult:spawn/maps/shroom
execute if score #server map matches 11 run function ult:spawn/maps/hell
execute if score #server map matches 12 run function ult:spawn/maps/frontier
execute if score #server map matches 13 run function ult:spawn/maps/reflection
execute if score #server map matches 14 run function ult:spawn/maps/dracula
execute if score #server map matches 15 run function ult:spawn/maps/avanto
execute if score #server map matches 16 run function ult:spawn/maps/boxing
execute if score #server map matches 17 run function ult:spawn/maps/ancient

execute at @s run playsound item.totem.use master @a[tag=!parkour] ~ ~ ~ 1 0.7

scoreboard players set @s afk 0
scoreboard players set @s die 0

title @s actionbar ""
