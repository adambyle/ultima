scoreboard players operation .temp_map var = .map flag
function ult:data/map/get_details
execute as @r run item modify block 0 0 0 container.0 ult:tech/map_name
execute if score .map_mode flag = flag.map_mode.selected const run data modify entity @e[limit=1, tag=text_display.map_name] CustomName set from block 0 0 0 Items[0].tag.display.Name
execute unless score .map_mode flag = flag.map_mode.selected const run data merge entity @e[limit=1, tag=text_display.map_name] {CustomName: '{"text": "???", "color": "#F9C74F"}'}

# Credit the author, or put something else on the lower display
    execute as @r run item modify block 0 0 0 container.0 ult:tech/map_author
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag >= flag.map.start_featured const run data modify entity @e[limit=1, tag=text_display.map_author] CustomName set from block 0 0 0 Items[0].tag.display.Name
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag <= flag.map.end_default const run data merge entity @e[limit=1, tag=text_display.map_author] {CustomName: '{"text": "Default map", "color": "#577590"}'}
    execute if score .map_mode flag = flag.map_mode.random const run data merge entity @e[limit=1, tag=text_display.map_author] {CustomName: '{"text": "[Random Map]", "color": "#577590"}'}
    execute if score .map_mode flag = flag.map_mode.cycle const run data merge entity @e[limit=1, tag=text_display.map_author] {CustomName: '{"text": "[Cycle Map]", "color": "#577590"}'}
    execute if score .map_mode flag = flag.map_mode.vote const run data merge entity @e[limit=1, tag=text_display.map_author] {CustomName: '{"text": "[Vote Map]", "color": "#577590"}'}
