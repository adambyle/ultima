scoreboard players add map q 1
execute if score map q matches 5 run scoreboard players set map q 1

execute if score map q matches 1 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Manor","color":"dark_purple"}'
execute if score map q matches 2 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Woodlands [Coming soon]","color":"dark_purple"}'
execute if score map q matches 3 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Dungeon [Coming soon]","color":"dark_purple"}'
execute if score map q matches 4 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Bathhouse [Coming soon]","color":"dark_purple"}'

execute if score map q matches 1 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Adam Byle","color":"light_purple"}'
execute if score map q matches 2 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Adam Byle","color":"light_purple"}'
execute if score map q matches 3 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Adam Byle","color":"light_purple"}'
execute if score map q matches 4 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Jonathan Deiss","color":"light_purple"}'

setblock ~ ~ ~ polished_blackstone_button[powered=false,facing=west]
