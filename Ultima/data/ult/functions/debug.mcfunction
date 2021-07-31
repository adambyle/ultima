tellraw @s "YOUR STATS:"
function ult:data/player/get
tellraw @s {"storage": "ult:temp", "nbt": "Player.Game"}
