# Change GUI flag
    scoreboard players operation @s menu = menu.hotbar_workspace const

# Set map value, setup workspace
    scoreboard players operation @s hotbar_map = .selected_map var
    function ult:settings/player/hotbar/workspace/setup
