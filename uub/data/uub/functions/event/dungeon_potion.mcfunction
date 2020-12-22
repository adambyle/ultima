execute at @e[tag=dungeon_potion] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion,sort=random,limit=1] run data merge block ~ ~ ~ {Items:[{Slot:1b,id:"splash_potion",tag:{Potion:"healing"},Count:1b}]}
schedule function uub:event/dungeon_potion 45s
