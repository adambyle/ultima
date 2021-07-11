execute at @e[tag=vote_station] run summon marker ~ ~ ~ {Tags: ["vote_station"]}

execute at @e[type=armor_stand] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomNameVisible: true}
execute as @e[type=armor_stand] at @s run data modify entity @e[type=area_effect_cloud, sort=nearest, limit=1] Tags set from entity @s Tags
execute as @e[type=armor_stand] at @s run data modify entity @e[type=area_effect_cloud, sort=nearest, limit=1] CustomName set from entity @s CustomName
kill @e[type=armor_stand]
