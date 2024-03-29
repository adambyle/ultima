# Get the value from player data, increment, and store
    execute store result score .afk var run data get storage ult:temp Player.afkTime
    scoreboard players add .afk var 1
    execute if score .afk var matches 4.. run scoreboard players set .afk var 0
    execute store result storage ult:temp Player.afkTime byte 1 run scoreboard players get .afk var

# Play a sound effect
    execute if score .afk var matches 0 at @s run playsound entity.player.hurt master @s ~ ~ ~ 4
    execute if score .afk var matches 1 at @s run playsound entity.zombie.hurt master @s ~ ~ ~ 4
    execute if score .afk var matches 2 at @s run playsound entity.skeleton.hurt master @s ~ ~ ~ 4
    execute if score .afk var matches 3 at @s run playsound entity.wither_skeleton.hurt master @s ~ ~ ~ 4

# Store data and apply changes to menu
    function ult:data/player/save
    function ult:settings/player/main
