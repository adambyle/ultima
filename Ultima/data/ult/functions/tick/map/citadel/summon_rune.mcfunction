# Reset timer
    scoreboard players set .map event 150

# Summon one of four randomized runes
    execute if score .map_rune _var = event.rune.speed const run summon item 77 23 15 {Tags: ["citadel_rune", "static", "temp"], Item: {id: "globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Δ Speed Rune (Crouch)", "italic": false}'}}}}
    execute if score .map_rune _var = event.rune.health const run summon item 77 23 15 {Tags: ["citadel_rune", "static", "temp"], Item: {id: "globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Π Health Rune (Crouch)", "italic": false}'}}}}
    execute if score .map_rune _var = event.rune.attack const run summon item 77 23 15 {Tags: ["citadel_rune", "static", "temp"], Item: {id: "globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Σ Attack Rune (Crouch)", "italic": false}'}}}}
    execute if score .map_rune _var = event.rune.defense const run summon item 77 23 15 {Tags: ["citadel_rune", "static", "temp"], Item: {id: "globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Γ Defense Rune (Crouch)", "italic": false}'}}}}
    execute store result entity @e[tag=temp, limit=1] Item.tag.CitadelRune int 1 run scoreboard players get .map_rune _var

particle poof 77 24 15 0 0 0 0.1 12 force
playsound block.beacon.power_select master @a 77 23 15 16 2
