scoreboard players set @a map 0
function ult:data/new_maps

execute if score #flag game_mode = #duels game_mode run function ult:victory/duels
execute unless score #flag game_mode = #duels game_mode run function ult:victory/not_duels

scoreboard players add @a[tag=alive] wins 1

scoreboard players set @a die 0
gamemode spectator @a[tag=player, tag=!alive, scores={y.spect_death=1}]
clear @a
effect clear @a
effect give @a instant_health 1 3 true
effect give @a resistance 4 4 true

execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:5,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4312372]}]}}}}
