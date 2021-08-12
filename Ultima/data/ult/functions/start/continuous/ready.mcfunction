function ult:data/root
tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " has voted.", "color": "#577590"}]
tellraw @a[tag=!root, tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "#577590"}, " +"]
tag @s add ready
execute if entity @a[tag=voting, tag=!ready] run tellraw @s[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Please wait for everyone to vote.", "color": "gray"}]
function ult:settings/player/main
