execute if score randmap q matches 1.. run scoreboard players set map q 0
scoreboard players add map q 1
execute if score map q matches 5 run scoreboard players set map q 0

execute if score map q matches 0 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"[Cycle Maps]","color":"gold"}'
execute if score map q matches 1 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Manor","color":"dark_purple"}'
execute if score map q matches 2 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Woodlands","color":"dark_purple"}'
execute if score map q matches 3 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Dungeon","color":"dark_purple"}'
execute if score map q matches 4 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Abyss","color":"dark_purple"}'

execute if score map q matches 0 run data modify entity @e[tag=msw,limit=1] CustomName set value '""'
execute if score map q matches 1..4 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Adam Byle","color":"light_purple"}'

execute if score map q matches 0 run scoreboard players set randmap q 1
execute if score map q matches 1.. run scoreboard players set randmap q 0

setblock ~ ~ ~ polished_blackstone_button[powered=false,facing=west]
