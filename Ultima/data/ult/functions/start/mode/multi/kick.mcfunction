# Remove player from game, and give them another option
    tag @s remove player
    tellraw @s [{"text": "N: ", "color": "dark_gray"}, {"text": "You were opted out, as this game is overfilled. Brawl mode offers room for any number of players, but this mode, Royale, doesn't.", "color": "#F8961E"}]
