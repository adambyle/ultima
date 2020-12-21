scoreboard players add mode q 1
execute if score mode q matches 4 run scoreboard players set mode q 1

execute if score mode q matches 1 run data modify entity @e[tag=gsw,limit=1] CustomName set value '{"text":"Classic","color":"aqua","italic":true}'
execute if score mode q matches 2 run data modify entity @e[tag=gsw,limit=1] CustomName set value '{"text":"Duels","color":"aqua","italic":true}'
execute if score mode q matches 3 run data modify entity @e[tag=gsw,limit=1] CustomName set value '{"text":"Ultimate Brawl","color":"aqua","italic":true}'

setblock -3 22 0 polished_blackstone_button[powered=false,facing=east]
