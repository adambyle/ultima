# Clear workspace
    function ult:settings/player/clear
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}
    clear @s #ult:map_items/all

# Set up items
    function ult:data/player/get
    execute if score @s hotbar_map = flag.map.manor const run function ult:settings/player/hotbar/workspace/setup/manor
    execute if score @s hotbar_map = flag.map.woodlands const run function ult:settings/player/hotbar/workspace/setup/woodlands
    execute if score @s hotbar_map = flag.map.dungeon const run function ult:settings/player/hotbar/workspace/setup/dungeon
    execute if score @s hotbar_map = flag.map.abyss const run function ult:settings/player/hotbar/workspace/setup/abyss
    execute if score @s hotbar_map = flag.map.citadel const run function ult:settings/player/hotbar/workspace/setup/citadel
    execute if score @s hotbar_map = flag.map.wasteland const run function ult:settings/player/hotbar/workspace/setup/wasteland
    execute if score @s hotbar_map = flag.map.town_square const run function ult:settings/player/hotbar/workspace/setup/town_square
    execute if score @s hotbar_map = flag.map.last_stand const run function ult:settings/player/hotbar/workspace/setup/last_stand
    execute if score @s hotbar_map = flag.map.permafrost const run function ult:settings/player/hotbar/workspace/setup/permafrost
    execute if score @s hotbar_map = flag.map.shroom const run function ult:settings/player/hotbar/workspace/setup/shroom
    execute if score @s hotbar_map = flag.map.haven const run function ult:settings/player/hotbar/workspace/setup/haven
    execute if score @s hotbar_map = flag.map.frontier const run function ult:settings/player/hotbar/workspace/setup/frontier
    execute if score @s hotbar_map = flag.map.facility const run function ult:settings/player/hotbar/workspace/setup/facility
    execute if score @s hotbar_map = flag.map.meadow const run function ult:settings/player/hotbar/workspace/setup/meadow
    execute if score @s hotbar_map = flag.map.leagues const run function ult:settings/player/hotbar/workspace/setup/leagues
    execute if score @s hotbar_map = flag.map.reflection const run function ult:settings/player/hotbar/workspace/setup/reflection
    execute if score @s hotbar_map = flag.map.dracula const run function ult:settings/player/hotbar/workspace/setup/dracula
    execute if score @s hotbar_map = flag.map.avanto const run function ult:settings/player/hotbar/workspace/setup/avanto
    execute if score @s hotbar_map = flag.map.boxing const run function ult:settings/player/hotbar/workspace/setup/boxing
    execute if score @s hotbar_map = flag.map.ancient const run function ult:settings/player/hotbar/workspace/setup/ancient
    execute if score @s hotbar_map = flag.map.marooned const run function ult:settings/player/hotbar/workspace/setup/marooned
    execute if score @s hotbar_map = flag.map.hill const run function ult:settings/player/hotbar/workspace/setup/hill
    execute if score @s hotbar_map = flag.map.bathhouse const run function ult:settings/player/hotbar/workspace/setup/bathhouse
    execute if score @s hotbar_map = flag.map.chasm const run function ult:settings/player/hotbar/workspace/setup/chasm
    function ult:settings/player/hotbar/workspace/gray_out

# Control icons
    item replace entity @s enderchest.2 with emerald{GUI: true, display: {Name: '{"text": "Confirm", "color": "#90BE6D", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.3 with structure_void{GUI: true, display: {Name: '{"text": "Back", "color": "#43AA8B", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.4 with lava_bucket{GUI: true, display: {Name: '{"text": "Reset Icons", "color": "#F94144", "bold": true, "italic": false}'}}
