# Get the value from player data, increment, and store
    execute store result score .skip_vote var run data get storage ult:temp Player.skipVote
    scoreboard players add .skip_vote var 1
    execute if score .skip_vote var matches 3.. run scoreboard players set .skip_vote var 0
    execute store result storage ult:temp Player.skipVote byte 1 run scoreboard players get .skip_vote var

# Play a sound effect
    execute if score .skip_vote var matches 0 at @s run playsound entity.villager.work_librarian master @s ~ ~ ~ 4
    execute if score .skip_vote var matches 1 at @s run playsound block.wood.place master @s ~ ~ ~ 4
    execute if score .skip_vote var matches 2 at @s run playsound entity.villager.no master @s ~ ~ ~ 4

# Store data and apply changes to menu
    function ult:data/player/save
    function ult:settings/player/main
