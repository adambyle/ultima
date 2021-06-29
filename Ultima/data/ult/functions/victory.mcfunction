# Generate map choices since a game finished
    function ult:data/map/new_maps

# Mode-specific endings
    execute if score .game_mode flag = flag.game_mode.duels const run function ult:victory/duels
    execute unless score .game_mode flag = flag.game_mode.duels const run function ult:victory/not_duels

# Credit the winner(s)
    scoreboard players add @a[tag=alive] wins 1

# No more players can die after victory
    scoreboard players reset * death
    clear @a
    effect give @a instant_health 1 3 true
    effect give @a resistance 4 4 true

# Fireworks!
    execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {FireworksItem: {Count: 1b, id: "firework_rocket", tag: {Fireworks: {Explosions: [{Colors: [I; 4312372], Flicker: false, Trail: false, Type: 0b}], Flight: 2b}}}, LifeTime: 5}
    execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {FireworksItem: {Count: 1b, id: "firework_rocket", tag: {Fireworks: {Explosions: [{Colors: [I; 4312372], Flicker: false, Trail: false, Type: 0b}], Flight: 2b}}}, LifeTime: 10}
    execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {FireworksItem: {Count: 1b, id: "firework_rocket", tag: {Fireworks: {Explosions: [{Colors: [I; 4312372], Flicker: false, Trail: false, Type: 0b}], Flight: 2b}}}, LifeTime: 15}
