tag @e remove temp
tag @e remove temp2
summon marker ^ ^ ^4 {Tags: ["temp", "prism"]}
scoreboard players set .const var 6
scoreboard players operation @e[tag=temp] event.prism = @s event.prism
scoreboard players operation @e[tag=temp] pn = @s pn
scoreboard players operation @e[tag=temp] event.prism /= .const var
data modify entity @e[tag=temp, limit=1] Rotation set from entity @s Rotation
scoreboard players set @s event.prism -40
