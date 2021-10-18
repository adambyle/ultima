# Change the map if it doesn't match what it already was
    scoreboard players operation temp.map_mode var = .map_mode flag
    scoreboard players operation .map_mode flag = flag.map_mode.random const
    execute unless score temp.map_mode var = .map_mode flag run function ult:settings/map/change
    function ult:settings/map/main
