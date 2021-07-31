function ult:settings/player/statistics/view

# Collect data
    # Performance
    execute store result score .games _var run data get storage ult:temp Sample
    scoreboard players set .wins _var 0
    scoreboard players set .faces _var 0
    scoreboard players set .defeats _var 0
    scoreboard players set .kills _var 0
    scoreboard players set .deaths _var 0
    scoreboard players set .suicide _var 0
    scoreboard players set .freshkills _var 0
    scoreboard players set .normkills _var 0
    scoreboard players set .revenge _var 0
    data modify storage ult:temp Deaths set value []
    scoreboard players set .max_death _var 0
    data modify storage ult:temp Kills set value []
    scoreboard players set .max_kill _var 0
    data modify storage ult:temp Maps set value []
    scoreboard players set .max_map _var 0
    execute if data storage ult:temp Sample[0] run function ult:settings/player/statistics/view/mode/all/data_loop
    # Wins
    scoreboard players operation .num control = .wins _var
    scoreboard players set .const _var 100
    scoreboard players operation .num control *= .const _var
    scoreboard players operation .den control = .games _var
    scoreboard players set .places control 1
    function ult:data/decimal
    item modify block 0 0 0 container.0 ult:tech/decimal/dec
    data modify storage ult:temp WR set from block 0 0 0 Items[0].tag.display.Name
    # Performance Score
    scoreboard players operation .num control = .defeats _var
    scoreboard players operation .num control *= .const _var
    scoreboard players operation .den control = .defeats _var
    scoreboard players operation .den control += .games _var
    scoreboard players operation .den control -= .wins _var
    function ult:data/decimal
    item modify block 0 0 0 container.0 ult:tech/decimal/dec
    data modify storage ult:temp PS set from block 0 0 0 Items[0].tag.display.Name
    # Players Faced
    scoreboard players set .places control 2
    scoreboard players operation .num control = .faces _var
    scoreboard players operation .den control = .games _var
    function ult:data/decimal
    item modify block 0 0 0 container.0 ult:tech/decimal/dec
    data modify storage ult:temp PF set from block 0 0 0 Items[0].tag.display.Name
    # Players Defeated
    scoreboard players operation .num control = .defeats _var
    scoreboard players operation .den control = .games _var
    function ult:data/decimal
    item modify block 0 0 0 container.0 ult:tech/decimal/dec
    data modify storage ult:temp PD set from block 0 0 0 Items[0].tag.display.Name
    # Kill-death Ratio
    scoreboard players operation .num control = .kills _var
    scoreboard players operation .den control = .deaths _var
    function ult:data/decimal
    item modify block 0 0 0 container.0 ult:tech/decimal/dec
    data modify storage ult:temp KDR set from block 0 0 0 Items[0].tag.display.Name

# Display
    item replace entity @s enderchest.13 with diamond{GUI: true, display: {Name: '{"text": "Performance", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.14 with diamond_sword{GUI: true, display: {Name: '{"text": "Kills", "bold": true, "italic": false}'}, HideFlags: 63}
    item replace entity @s enderchest.15 with skeleton_skull{GUI: true, display: {Name: '{"text": "Deaths", "bold": true, "italic": false, "color": "white"}'}}
    execute if data storage ult:temp Player.StatMenu{map: -1} run item replace entity @s enderchest.16 with grass_block{GUI: true, display: {Name: '{"text": "Maps", "bold": true, "italic": false, "color": "white"}'}}
    item modify entity @s enderchest.13 ult:stats/view/all/performance
    item modify entity @s enderchest.14 ult:stats/view/brawl/kill_count
    function ult:settings/player/statistics/view/mode/all/kill_count
    scoreboard players operation .num _var = .suicide _var
    scoreboard players operation .num _var *= .const _var
    scoreboard players operation .num _var /= .deaths _var
    item modify entity @s enderchest.15 ult:stats/view/all/death_count
    function ult:settings/player/statistics/view/mode/all/death_count
    function ult:settings/player/statistics/view/mode/all/map_count
    item modify entity @s enderchest.13 ult:stats/view/footer
    item modify entity @s enderchest.14 ult:stats/view/footer
    item modify entity @s enderchest.15 ult:stats/view/footer
    item modify entity @s enderchest.16 ult:stats/view/footer
