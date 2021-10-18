scoreboard players operation .seconds var = .bonus_countdown control
scoreboard players set .const var 20
scoreboard players operation .seconds var /= .const var

execute as @r run item modify block 0 0 0 container.0 ult:tech/bonus_countdown

kill @e[tag=bonus_countdown]
execute at @e[tag=bonus_item] run summon area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["bonus_countdown"]}
data modify entity @e[tag=bonus_countdown, limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
data modify entity @e[tag=bonus_countdown, limit=1] CustomNameVisible set value true

execute at @e[tag=bonus_item] run playsound block.note_block.bell master @a[tag=player, tag=alive] ~ ~ ~ 0.6 0.5
