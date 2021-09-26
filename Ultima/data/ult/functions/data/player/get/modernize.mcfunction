# Initializing missing nodes
    execute unless data storage ult:temp Player.afkTime run data modify storage ult:temp Player.afkTime set value 1b
    execute unless data storage ult:temp Player.autoReady run data modify storage ult:temp Player.autoReady set value 0b
    execute unless data storage ult:temp Player.skipVote run data modify storage ult:temp Player.skipVote set value 0b
    execute unless data storage ult:temp Player.Spectate.joinWorld run data modify storage ult:temp Player.Spectate.joinWorld set value true
    execute unless data storage ult:temp Player.Spectate.startGame run data modify storage ult:temp Player.Spectate.startGame set value true
    execute unless data storage ult:temp Player.Spectate.optOut run data modify storage ult:temp Player.Spectate.optOut set value false
    execute unless data storage ult:temp Player.Spectate.death run data modify storage ult:temp Player.Spectate.death set value true
    execute unless data storage ult:temp Player.Games run data modify storage ult:temp Player.Games set value []
    execute unless data storage ult:temp Player.StatMenu.timespan run data modify storage ult:temp Player.StatMenu.timespan set value 0b
    execute unless data storage ult:temp Player.Chat.pronouns run data modify storage ult:temp Player.Chat.pronouns set value 0b
    function ult:data/player/default_hotbar
