title @s reset
title @s times 5 70 5
title @s title {"text": "Spawning...", "color": "#F9C74F"}
execute at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 4 2
scoreboard players set @s respawn 80
scoreboard players reset @s queue
title @s actionbar ""

# Announce respawn
    execute unless score .game_mode flag = flag.game_mode.brawl const run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#43AA8B"}, {"text": " will respawn.", "color": "gray"}]

# Reserve spot in arena
    function ult:spawn/assign_pn

# Summon respawn marker
    tag @e remove temp
    summon villager 0 20 0 {Glowing: true, ActiveEffects: [{Duration: 999999999, Id: 14, ShowParticles: false}], Tags: ["respawn_marker", "temp"], NoAI: true, Silent: true, CustomNameVisible: true, Team: "respawn_marker", Invulnerable: true}
    # Mimic player teleportation
    scoreboard players operation @e[tag=temp] pn = @s pn
    execute as @e[tag=temp] run function ult:tp
    scoreboard players operation @e[tag=temp] respawn = @s respawn
