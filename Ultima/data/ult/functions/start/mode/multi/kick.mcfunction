# Remove player from game, and give them another option
    scoreboard players set @s tether -2
    tellraw @s[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Royale mode only supports up to 4 players. You were randomly chosen to not participate this time.", "color": "#F8961E"}]
    tellraw @s[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, "Too many players for Royale!"]
