# Spectator mode
    gamemode spectator
    effect give @s night_vision 99999 0 true
    function ult:tp

# Give link to teleport back to lobby
    function ult:tick/action/opt_prompt
