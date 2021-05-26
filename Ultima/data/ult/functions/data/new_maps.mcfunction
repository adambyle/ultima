function ult:data/choose_map
function ult:data/generate_voted_maps
function ult:data/set_map_data

execute if score #server game_mode = flag.game_mode.duels const run title @a reset
execute if score #server game_mode = flag.game_mode.duels const run title @a times 0 70 10
execute if score #server game_mode = flag.game_mode.duels const run title @a subtitle "Next up"
execute if score #server game_mode = flag.game_mode.duels const if score #flag map > #select map run title @a[tag=!parkour] title {"storage": "ult:temp", "nbt": "Map", "color": "green"}
execute if score #server game_mode = flag.game_mode.duels const if score #flag map > #select map run title @a[tag=parkour, tag=player] title {"storage": "ult:temp", "nbt": "Map", "color": "green"}
