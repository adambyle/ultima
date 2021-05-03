##tellraw @p {"text": "DEVELOPMENTAL VERSION", "bold": true}
##tellraw @p [{"text": "This version is potentially unstable, games may occasionally work unexpectedly. Report bugs "}, {"text": "on GitHub.", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/beegyfleeg/ultimabr/issues"}}]

tellraw @p [{"text": "Ultima ", "bold": true}, {"text": "v1.0", "bold": false}]
tellraw @p [{"text": "The version is stable and ready to play. If anything goes awry, hit the RESET button and report the bug."}]

data merge entity @e[type=cow,limit=1] {id: "minecraft:cat"}
