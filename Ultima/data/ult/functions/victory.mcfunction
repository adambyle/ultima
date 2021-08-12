# Generate map choices since a game finished
    function ult:data/map/generate

execute if score .game_mode flag = flag.game_mode.duels const if score .continuous flag matches 1 run function ult:victory/duels
    
# The winners are determined by who is alive (allowing for ties)
    title @a reset
    title @a times 5 45 5
    execute if entity @a[tag=alive] run title @a title [{"selector": "@a[tag=alive]", "color": "#90BE6D", "bold": true}, {"text": " wins!"}]
    execute if entity @a[tag=alive] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=alive]", "color": "#90BE6D", "bold": true}, {"text": " wins!", "color": "#90BE6D", "bold": true}]
    execute if entity @a[tag=alive] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=alive]", "color": "#90BE6D"}, " wins."]
    execute unless entity @a[tag=alive] run title @a title {"text": "Nobody wins!", "color": "#F3722C", "bold": true}
    execute unless entity @a[tag=alive] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"text": "Nobody wins!", "color": "#F3722C", "bold": true}]
    execute as @a[tag=alive] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 8
    execute as @a[tag=player, tag=!alive] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 8


# Show the wins for right now
    scoreboard players reset * health_display
    scoreboard objectives setdisplay sidebar wins

# Credit the winner(s)
    scoreboard players add @a[tag=alive] wins 1
    execute as @a[tag=alive] run function ult:victory/winstat
    execute as @a[tag=participating] run function ult:victory/update_stat

# No more players can die after victory
    scoreboard players reset * death
    clear @a
    effect give @a instant_health 1 3 true
    effect give @a resistance 4 4 true

# Stop running tick functions
    scoreboard players operation .game_state flag = flag.game_state.transition const

# Fireworks!
    execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {FireworksItem: {Count: 1b, id: "firework_rocket", tag: {Fireworks: {Explosions: [{Colors: [I; 4312372], Flicker: false, Trail: false, Type: 0b}], Flight: 2b}}}, LifeTime: 5}
    execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {FireworksItem: {Count: 1b, id: "firework_rocket", tag: {Fireworks: {Explosions: [{Colors: [I; 4312372], Flicker: false, Trail: false, Type: 0b}], Flight: 2b}}}, LifeTime: 10}
    execute at @a[tag=alive] run summon firework_rocket ~ ~4 ~ {FireworksItem: {Count: 1b, id: "firework_rocket", tag: {Fireworks: {Explosions: [{Colors: [I; 4312372], Flicker: false, Trail: false, Type: 0b}], Flight: 2b}}}, LifeTime: 15}

# Start another game if continuous
    execute if score .continuous flag matches 1 run function ult:victory/start_next
    execute if score .continuous flag matches 0 run schedule function ult:reset 50t
