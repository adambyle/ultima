tag @e remove temp
tag @a remove temp
execute if entity @e[tag=chest, distance=..1.5] align xyz positioned ~.5 ~-.5 ~.5 run say chest is already here!
execute unless entity @e[tag=chest, distance=..1.5] align xyz positioned ~.5 ~-.5 ~.5 run say summoned chest
execute unless entity @e[tag=chest, distance=..1.5] align xyz positioned ~.5 ~-.5 ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["chest", "static_item"]}
