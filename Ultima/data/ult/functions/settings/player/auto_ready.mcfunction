# Get the value from player data, increment, and store
    execute store result score .auto_ready _var run data get storage ult:temp Player.autoReady
    scoreboard players add .auto_ready _var 1
    execute if score .auto_ready _var matches 3.. run scoreboard players set .auto_ready _var 0
    execute store result storage ult:temp Player.autoReady byte 1 run scoreboard players get .auto_ready _var

# Play a sound effect
    execute if score .auto_ready _var matches 0 at @s run playsound entity.player.attack.weak master @s ~ ~ ~ 4
    execute if score .auto_ready _var matches 1 at @s run playsound entity.player.attack.strong master @s ~ ~ ~ 4
    execute if score .auto_ready _var matches 2 at @s run playsound entity.player.attack.crit master @s ~ ~ ~ 4

# Store data and apply changes to menu
    function ult:data/player/save_nbt
    function ult:settings/player/main
