execute unless score #maps menu = #map.featured menu run data remove block 43 31 -12 Items
scoreboard players operation #maps menu = #map.featured menu

scoreboard players set #selected map 0

clear @a[gamemode=!creative] gold_block

execute if data block 43 31 -12 Items[0] run function uub:settings/map/featured_test

loot replace block 43 31 -12 container.5 loot uub:map_icon/reflection
loot replace block 43 31 -12 container.6 loot uub:map_icon/dracula
loot replace block 43 31 -12 container.7 loot uub:map_icon/avanto
loot replace block 43 31 -12 container.8 loot uub:map_icon/boxing
data remove block 43 31 -12 Items[].tag.display.Lore[0]
replaceitem block 43 31 -12 container.11 structure_void{display:{Name:'{"text":"Back","color":"dark_red","italic":false,"bold":true}',Lore:['{"text":"Back to Map Selection...","color":"gray"}']}}

execute if score #flag map = #select map if score #server map matches 13 run data modify block 43 31 -12 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 14 run data modify block 43 31 -12 Items[{Slot:6b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 15 run data modify block 43 31 -12 Items[{Slot:7b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 16 run data modify block 43 31 -12 Items[{Slot:8b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 17 run data modify block 43 31 -12 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 18 run data modify block 43 31 -12 Items[{Slot:15b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 19 run data modify block 43 31 -12 Items[{Slot:16b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 20 run data modify block 43 31 -12 Items[{Slot:17b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 21 run data modify block 43 31 -12 Items[{Slot:23b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 22 run data modify block 43 31 -12 Items[{Slot:24b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 23 run data modify block 43 31 -12 Items[{Slot:25b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 24 run data modify block 43 31 -12 Items[{Slot:26b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'

execute unless score #selected map matches 0 run clear @a[gamemode=!creative] #uub:map_icons
execute if score #selected map matches 1.. unless score #selected map = #server map if score #flag map = #select map run function uub:settings/map/select
execute if score #selected map matches 1.. unless score #flag map = #select map run function uub:settings/map/select
