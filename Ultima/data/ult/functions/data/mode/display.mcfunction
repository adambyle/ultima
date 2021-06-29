execute if score .game_mode flag = flag.game_mode.duels const run data modify entity @e[limit=1, tag=text_display.mode_name] CustomName set value '{"text": "Duels", "color": "aqua", "italic": true}'
execute if score .game_mode flag = flag.game_mode.royale const run data modify entity @e[limit=1, tag=text_display.mode_name] CustomName set value '{"text": "Royale", "color": "aqua", "italic": true}'
execute if score .game_mode flag = flag.game_mode.brawl const run data modify entity @e[limit=1, tag=text_display.mode_name] CustomName set value '{"text": "Brawl", "color": "aqua", "italic": true}'
