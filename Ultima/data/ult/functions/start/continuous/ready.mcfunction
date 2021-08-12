function ult:data/root

function ult:data/player/get
execute if data storage ult:temp Player.Chat{pronouns: 0b} run data modify storage ult:temp Possessive set value "their"
execute if data storage ult:temp Player.Chat{pronouns: 1b} run data modify storage ult:temp Possessive set value "his"
execute if data storage ult:temp Player.Chat{pronouns: 2b} run data modify storage ult:temp Possessive set value "her"
execute as @s[tag=!ready] run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " has voted.", "color": "#577590"}]
execute as @s[tag=ready] run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " changed "}, {"storage": "ult:temp", "nbt": "Possessive"}, {"text": " vote.", "color": "gray"}]

tellraw @a[tag=!root, tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "#577590"}, " +"]
tag @s add ready
execute if entity @a[tag=voting, tag=!ready] run tellraw @s[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Please wait for everyone to vote.", "color": "gray"}]
function ult:settings/player/main
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 4 1
