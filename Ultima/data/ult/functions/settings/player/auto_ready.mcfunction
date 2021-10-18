# Get the value from player data, increment, and store
    execute store result score .auto_ready var run data get storage ult:temp Player.autoReady
    scoreboard players add .auto_ready var 1
    execute if score .auto_ready var matches 3.. run scoreboard players set .auto_ready var 0
    execute store result storage ult:temp Player.autoReady byte 1 run scoreboard players get .auto_ready var

# Play a sound effect
    execute if score .auto_ready var matches 0 at @s run playsound entity.player.attack.weak master @s ~ ~ ~ 4
    execute if score .auto_ready var matches 1 at @s run playsound entity.player.attack.strong master @s ~ ~ ~ 4
    execute if score .auto_ready var matches 2 at @s run playsound entity.player.attack.crit master @s ~ ~ ~ 4

# Store data and apply changes to menu
    function ult:data/player/save
    function ult:settings/player/main
