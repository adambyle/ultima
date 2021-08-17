# Get the value from player data, increment, and store
    execute store result score .pronouns _var run data get storage ult:temp Player.Chat.pronouns
    scoreboard players add .pronouns _var 1
    execute if score .pronouns _var matches 3.. run scoreboard players set .pronouns _var 0
    execute store result storage ult:temp Player.Chat.pronouns byte 1 run scoreboard players get .pronouns _var

# Store data and apply changes to menu
    function ult:data/player/save
    function ult:settings/player/chat
