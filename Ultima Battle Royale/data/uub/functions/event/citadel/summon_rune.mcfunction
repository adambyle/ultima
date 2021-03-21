scoreboard players set #map event 150

execute if score #map citadel_rune matches 1 run summon item 77 23 15 {Tags: ["citadel_rune", "static_item"], Item: {id: "minecraft:globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Δ Speed Rune (Crouch)", "italic": false}'}, citadel_rune: 1}}}
execute if score #map citadel_rune matches 2 run summon item 77 23 15 {Tags: ["citadel_rune", "static_item"], Item: {id: "minecraft:globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Π Health Rune (Crouch)", "italic": false}'}, citadel_rune: 2}}}
execute if score #map citadel_rune matches 3 run summon item 77 23 15 {Tags: ["citadel_rune", "static_item"], Item: {id: "minecraft:globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Σ Attack Rune (Crouch)", "italic": false}'}, citadel_rune: 3}}}
execute if score #map citadel_rune matches 4 run summon item 77 23 15 {Tags: ["citadel_rune", "static_item"], Item: {id: "minecraft:globe_banner_pattern", Count: 1b, tag: {HideFlags: 63, display: {Name: '{"text": "Γ Defense Rune (Crouch)", "italic": false}'}, citadel_rune: 4}}}

particle poof 77 24 15 0 0 0 0.1 12
playsound block.beacon.power_select master @a 77 23 15 16 2
