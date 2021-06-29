execute as @a[tag=player, tag=alive] run function ult:tick/active/map/marooned/trident_ownership
loot give @a[scores={_var=0}, nbt=!{Inventory: [{id: "minecraft:trident"}]}] loot ult:map_items/marooned/trident

fill 131 13 186 95 25 124 spruce_fence_gate[facing=east, open=false] replace spruce_fence_gate[facing=east, open=true]
fill 131 13 186 95 25 124 spruce_fence_gate[facing=west, open=false] replace spruce_fence_gate[facing=west, open=true]
fill 131 13 186 95 25 124 spruce_fence_gate[facing=north, open=false] replace spruce_fence_gate[facing=north, open=true]
fill 131 13 186 95 25 124 spruce_fence_gate[facing=south, open=false] replace spruce_fence_gate[facing=south, open=true]

execute if score .transition event matches 1 run scoreboard players add .map event 1
execute if score .transition event matches 0 if predicate ult:coin_flip run scoreboard players add .map event 1
execute if score .map event matches 100 run function ult:tick/active/map/marooned/flood/0
execute if score .map event matches 110 run function ult:tick/active/map/marooned/flood/1
execute if score .map event matches 120 run function ult:tick/active/map/marooned/flood/2
execute if score .map event matches 130 run function ult:tick/active/map/marooned/flood/3
execute if score .map event matches 140 run function ult:tick/active/map/marooned/flood/4
execute if score .map event matches 150 run function ult:tick/active/map/marooned/flood/5
execute if score .map event matches 160 run function ult:tick/active/map/marooned/flood/6
execute if score .map event matches 170 run function ult:tick/active/map/marooned/flood/7

execute if score .map event matches 300 run function ult:tick/active/map/marooned/unflood/7
execute if score .map event matches 310 run function ult:tick/active/map/marooned/unflood/6
execute if score .map event matches 320 run function ult:tick/active/map/marooned/unflood/5
execute if score .map event matches 330 run function ult:tick/active/map/marooned/unflood/4
execute if score .map event matches 340 run function ult:tick/active/map/marooned/unflood/3
execute if score .map event matches 350 run function ult:tick/active/map/marooned/unflood/2
execute if score .map event matches 360 run function ult:tick/active/map/marooned/unflood/1
execute if score .map event matches 370 run function ult:tick/active/map/marooned/unflood/0

effect give @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:heart_of_the_sea"}}] dolphins_grace 99999 0
effect give @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:heart_of_the_sea"}}] water_breathing 99999 0
item replace entity @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:heart_of_the_sea"}}] armor.feet with iron_boots{Enchantments: [{id: "protection", lvl: 1s}, {id: "depth_strider", lvl: 3s}], Unbreakable: true}
effect give @a[tag=player, tag=alive, nbt={Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] dolphins_grace 99999 0
effect give @a[tag=player, tag=alive, nbt={Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] water_breathing 99999 0
item replace entity @a[tag=player, tag=alive, nbt={Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] armor.feet with iron_boots{Enchantments: [{id: "protection", lvl: 1s}, {id: "depth_strider", lvl: 3s}], Unbreakable: true}
effect clear @a[nbt=!{SelectedItem: {id: "minecraft:heart_of_the_sea"}}, nbt=!{Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] dolphins_grace 
effect clear @a[nbt=!{SelectedItem: {id: "minecraft:heart_of_the_sea"}}, nbt=!{Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] water_breathing 
item replace entity @a[nbt=!{SelectedItem: {id: "minecraft:heart_of_the_sea"}}, nbt=!{Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] armor.feet with iron_boots{Enchantments: [{id: "protection", lvl: 1s}], Unbreakable: true}

execute as @a[scores={event.salmon=1..}, nbt=!{Inventory: [{id: "minecraft:cooked_salmon"}]}] run function ult:tick/active/map/marooned/food

execute as @a[scores={crouch_mode=1}, nbt={SelectedItem: {id: "minecraft:cooked_salmon"}}] run function ult:tick/active/map/marooned/eat_food
execute as @a[scores={crouch_mode=1}, nbt={Inventory: [{id: "minecraft:cooked_salmon", Slot: -106b}]}] run function ult:tick/active/map/marooned/eat_food
