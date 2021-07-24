tellraw @s "YOUR STATS:"
function ult:data/player/get_nbt
tellraw @s {"storage": "ult:temp", "nbt": "Player.Game"}
