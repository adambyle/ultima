# Execute menu-specific driver functions
    execute if score @s menu = menu.main const run function ult:settings/player/main/driver
    execute if score @s menu = menu.hotbar_default const run function ult:settings/player/hotbar/default/driver
    execute if score @s menu = menu.hotbar_featured const run function ult:settings/player/hotbar/featured/driver
    execute if score @s menu = menu.hotbar_workspace const run function ult:settings/player/hotbar/workspace/driver
    execute if score @s menu = menu.spectate const run function ult:settings/player/spectate/driver
    execute if score @s menu = menu.vote const run function ult:settings/player/vote/driver
