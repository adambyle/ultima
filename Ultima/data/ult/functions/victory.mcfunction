scoreboard players set @a vote 0
function ult:data/new_maps

execute if score .game_mode flag = flag.game_mode.duels const run function ult:victory/duels
execute unless score .game_mode flag = flag.game_mode.duels const run function ult:victory/not_duels

scoreboard players add @a[tag=alive] wins 1

scoreboard players set @a death 0
clear @a
effect clear @a
effect give @a instant_health 1 3 true
effect give @a resistance 4 4 true

execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:5, FireworksItem: {id: "firework_rocket", Count:1, tag: {Fireworks: {Flight:2, Explosions: [{Type:0, Flicker:0, Trail:0, Colors: [I; 4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:10, FireworksItem: {id: "firework_rocket", Count:1, tag: {Fireworks: {Flight:2, Explosions: [{Type:0, Flicker:0, Trail:0, Colors: [I; 4312372]}]}}}}
execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {LifeTime:15, FireworksItem: {id: "firework_rocket", Count:1, tag: {Fireworks: {Flight:2, Explosions: [{Type:0, Flicker:0, Trail:0, Colors: [I; 4312372]}]}}}}
