# Execute menu-specific driver functions
    execute if score @s menu = menu.main const run function ult:settings/ender_chest/main/driver
    execute if score @s menu = menu.hotbar_main const run function ult:settings/ender_chest/hotbar/main/driver
    execute if score @s menu = menu.hotbar const run function ult:settings/ender_chest/hotbar/driver
    execute if score @s menu = menu.spectator const run function ult:settings/ender_chest/spectate/driver
    execute if score @s menu = menu.vote const run function ult:settings/ender_chest/vote/driver
    execute if score @s menu = menu.parkour const run function ult:parkour/menu/driver
    execute if score @s menu = menu.parkour_records const run function ult:parkour/menu/records/driver
    execute if score @s menu = menu.parkour_maps const run function ult:parkour/menu/choose_map/driver
