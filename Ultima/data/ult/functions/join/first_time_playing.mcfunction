tag @s add played_ultima

tellraw @s {"text": "== Welcome to Ultima! ==\n", "color": "gold", "bold": true}
tellraw @s "Grab a couple friends and step on the pressure plate to start a game. If you don't want to play, you can 'Opt Out' in the ender chest. The game will walk you through all of its various mechanics as you play. Enjoy!\n"
tellraw @s [{"text": "For a more in-depth explanation of the way Ultima works, check out the Wiki on ", "color": "gray"}, {"text": "GitHub.", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/beegyfleeg/ultima/wiki"}}]
