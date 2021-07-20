# This algorithm determines the number of visual half-hearts that actually disappeared (and thus the HP display)
    execute store result score .temp _var run data get entity @s Health 10
    scoreboard players operation .temp _var += @s damage_taken
    scoreboard players set .const _var 10
    scoreboard players operation .temp _var /= .const _var
    execute store result score .health _var run data get entity @s Health
    scoreboard players operation .temp _var -= .health _var

# Summon marker
    function ult:data/player/get_nbt
    tag @e remove temp
    execute at @s rotated ~ 0 positioned ^ ^ ^1 run summon area_effect_cloud ~ ~1 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["temp", "dmg_indicator"]}
    data modify entity @e[limit=1, tag=temp] Pos set from storage ult:temp Player.Pos

# Prepare text display (color-coded)
    execute if score .temp _var matches 0..3 run item modify block 0 0 0 container.0 ult:tech/dmg/weak
    execute if score .temp _var matches 4..6 run item modify block 0 0 0 container.0 ult:tech/dmg/normal
    execute if score .temp _var matches 7..9 run item modify block 0 0 0 container.0 ult:tech/dmg/strong
    execute if score .temp _var matches 10..100 run item modify block 0 0 0 container.0 ult:tech/dmg/lethal

# Time this marker should exist (proportional to damage)
    execute if score .temp _var matches 0..3 run scoreboard players set @e[tag=temp] control 15
    execute if score .temp _var matches 4..6 run scoreboard players set @e[tag=temp] control 30
    execute if score .temp _var matches 7..9 run scoreboard players set @e[tag=temp] control 45
    execute if score .temp _var matches 10..100 run scoreboard players set @e[tag=temp] control 60

# Display
    data modify entity @e[limit=1, tag=temp] CustomName set from block 0 0 0 Items[0].tag.display.Name
    data modify entity @e[limit=1, tag=temp] CustomNameVisible set value true
