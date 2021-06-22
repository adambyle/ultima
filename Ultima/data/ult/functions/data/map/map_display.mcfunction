scoreboard players operation .temp_map _var = .map flag
function ult:data/map/get_map_data
data modify block 45 35 -23 Text1 set value '{"storage": "ult:temp", "nbt": "Map", "color": "gold", "italic":true}'
execute if score .map_mode flag = flag.map_mode.selected const run data modify entity @e[tag=text_display.map_name,limit=1] CustomName set from block 45 35 -23 Text1
execute unless score .map_mode flag = flag.map_mode.selected const run data merge entity @e[tag=text_display.map_name,limit=1] {CustomName:'{"text": "???", "color": "gold"}'}

# Credit the author, or put something else on the lower display
    item replace block 0 0 0 container.0 with paper
    item modify block 0 0 0 container.0 ult:tech/map_author
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag matches 13.. run data modify entity @e[tag=text_display.map_author,limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag matches ..12 run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "Default map", "color": "dark_aqua"}'}
    execute if score .map_mode flag = flag.map_mode.random const run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "[Random Map]", "color": "dark_aqua"}'}
    execute if score .map_mode flag = flag.map_mode.cycle const run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "[Cycle Map]", "color": "dark_aqua"}'}
    execute if score .map_mode flag = flag.map_mode.vote const run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "[Vote Map]", "color": "dark_aqua"}'}
