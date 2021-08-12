function ult:data/root

# Spectators, markers, and area effect clouds cannot be the nearest entity
    tag @e remove temp
    tag @a remove temp
    tag @a[gamemode=spectator] add temp
    tag @e[type=marker] add temp
    tag @e[type=area_effect_cloud] add temp
    tag @s add temp

# Determine cause
    # Default
    scoreboard players operation @s death_cause = death_cause.normal const
    # Fall in abyss
    execute if score .map flag = flag.map.abyss const if score @s altitude matches ..12 run scoreboard players operation @s death_cause = death_cause.abyss_fall const
    # Fall in the hill
    execute if score .map flag = flag.map.hill const if score @s altitude matches ..20 run scoreboard players operation @s death_cause = death_cause.hill_pitfall const
    execute if score .map flag = flag.map.hill const if score @s[tag=hill_king] altitude matches ..20 run scoreboard players operation @s death_cause = death_cause.hill_pitfall_king const
    # Fished into abyss
    execute if score @s death_cause = death_cause.abyss_fall const as @e[sort=nearest, limit=1, tag=!temp, distance=..5] if entity @s[type=fishing_bobber] run scoreboard players operation @a[tag=root] death_cause = death_cause.abyss_fished const
    # Shot
    execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=#arrows, distance=..10] run scoreboard players operation @r[tag=root] death_cause = death_cause.shot const
    # Splashed with harming potion
    execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=potion, distance=..5] run scoreboard players operation @a[tag=root] death_cause = death_cause.harming_potion const
    # Shot in mid-air
    execute if score @s death_cause = death_cause.shot const if data entity @s ActiveEffects[{Id: 25b}] run scoreboard players operation @a[tag=root] death_cause = death_cause.shot_aerial const
    # Shot in citadel
    execute if score @s death_cause = death_cause.shot const if score .map flag = flag.map.citadel const run scoreboard players operation @a[tag=root] death_cause = death_cause.shot_hard const
    # Shot in the hill
    execute if score @s death_cause = death_cause.shot const if score .map flag = flag.map.hill const run scoreboard players operation @a[tag=root] death_cause = death_cause.hill_shot const
    # Shot by rocket
    execute as @e[sort=nearest, limit=1, tag=!temp] if entity @s[type=firework_rocket, distance=..10] run scoreboard players operation @r[tag=root] death_cause = death_cause.rocket const
    # Exploded in wasteland or ancient mines
    execute if score @s death_cause = death_cause.harming_potion const if score .map flag = flag.map.wasteland const run scoreboard players operation @a[tag=root] death_cause = death_cause.exploded const
    execute if score @s death_cause = death_cause.harming_potion const if score .map flag = flag.map.ancient const run scoreboard players operation @a[tag=root] death_cause = death_cause.exploded const
    # Died while on fire
    execute store result score .fire _var run data get entity @s Fire
    execute if score .fire _var matches 1.. run scoreboard players operation @s death_cause = death_cause.fire const
    execute at @s if block ~ ~ ~ #fire run scoreboard players operation @s death_cause = death_cause.fire const
    # Died in lava
    execute at @s if block ~ ~ ~ lava run scoreboard players operation @s death_cause = death_cause.lava const
    # Fell in the void
    execute if score @s altitude matches ..0 run scoreboard players operation @s death_cause = death_cause.glitch const
