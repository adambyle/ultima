execute unless score .game_mode flag = flag.game_mode.brawl const run tellraw @a [{"selector": "@s", "color": "dark_green"},{"text": " will respawn.", "color": "gray"}]
execute unless score .game_mode flag = flag.game_mode.brawl const run scoreboard players set @s tether -1
title @s reset
title @s times 5 70 5
title @s title {"text": "Spawning...", "color": "red"}
execute at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
scoreboard players set @s respawn 80
scoreboard players set @s queue 0
title @s actionbar ""
function ult:spawn/assign_pn

tag @e remove temp
summon villager 0 20 0 {Glowing: true, ActiveEffects: [{Id: 14b, ShowParticles: false, Duration: 999999999}], Tags: ["respawn_marker", "temp"], NoAI: true, Silent: true, CustomNameVisible: true, Team: "respawn_marker"}
scoreboard players operation @e[tag=temp] pn = @s pn
execute as @e[tag=temp] run function ult:tp
scoreboard players operation @e[tag=temp] respawn = @s respawn
