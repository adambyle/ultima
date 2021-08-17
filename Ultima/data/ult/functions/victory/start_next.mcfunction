tellraw @a[tag=player, tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, [{"text": "A new game will begin immediately. To stop and change settings, ", "color": "gray"}, {"text": "click here.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 8"}}]]
tellraw @a[tag=player, tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"text": "Stop game.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 8"}}]
schedule function ult:start/continuous 50t

# Announce the next map
    execute unless score .map_mode flag = flag.map_mode.selected const unless score .map_mode flag = flag.map_mode.vote const run function ult:victory/start_next/announce_next
