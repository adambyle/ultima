function uub:data/choose_map
function uub:data/generate_voted_maps
function uub:data/set_map_data

execute if score #flag game_mode = #duels game_mode run function uub:victory/duels
execute unless score #flag game_mode = #duels game_mode run function uub:victory/not_duels

gamemode spectator @a[tag=!alive]
clear @a
effect clear @a
effect give @a instant_health 1 3 true
effect give @a resistance 4 4 true

execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:5,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}

execute unless score #flag game_mode = #duels game_mode run scoreboard players set #flag game_state 2
