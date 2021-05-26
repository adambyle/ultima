scoreboard players operation #temp map = #server map
function ult:data/get_map_name
data modify block 45 35 -23 Text1 set value '{"storage": "ult:temp", "nbt": "Map", "color": "gold", "italic":true}'
execute if score #flag map = #select map run data modify entity @e[tag=text_display.map_name,limit=1] CustomName set from block 45 35 -23 Text1
execute if score #flag map > #select map run data merge entity @e[tag=text_display.map_name,limit=1] {CustomName:'{"text": "???", "color": "gold"}'}

function ult:data/get_map_author
data modify block 45 35 -23 Text1 set value '[{"text": "By ", "color": "dark_aqua", "italic":true},{"storage": "ult:temp", "nbt": "Author"}]'
execute if score #flag map = #select map if score #server map matches ..12 run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "Default map", "color": "dark_aqua"}'}
execute if score #flag map = #select map if score #server map matches 13.. run data modify entity @e[tag=text_display.map_author,limit=1] CustomName set from block 45 35 -23 Text1
execute if score #flag map = #random map run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "[Random Map]", "color": "dark_aqua"}'}
execute if score #flag map = #cycle map run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "[Cycle Map]", "color": "dark_aqua"}'}
execute if score #flag map = #vote map run data merge entity @e[tag=text_display.map_author,limit=1] {CustomName:'{"text": "[Vote Map]", "color": "dark_aqua"}'}
