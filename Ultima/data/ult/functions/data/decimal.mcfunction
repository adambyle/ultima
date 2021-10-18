execute if score .den control matches 0 run scoreboard players set .den control 1

execute if score .places control matches 1 run scoreboard players set .divisor var 10
execute if score .places control matches 2 run scoreboard players set .divisor var 100
execute if score .places control matches 3 run scoreboard players set .divisor var 1000
execute if score .places control matches 4 run scoreboard players set .divisor var 10000

scoreboard players operation .num control *= .divisor var
scoreboard players operation .num control /= .den control

scoreboard players operation .whole var = .num control
scoreboard players operation .whole var /= .divisor var

scoreboard players operation .frac var = .num control
scoreboard players operation .frac var %= .divisor var

data modify storage ult:temp Decimal1 set value '[{"score": {"name": ".whole", "objective": "var"}}, ".", {"score": {"name": ".frac", "objective": "var"}}]'
data modify storage ult:temp Decimal2 set value '[{"score": {"name": ".whole", "objective": "var"}}, ".0", {"score": {"name": ".frac", "objective": "var"}}]'
data modify storage ult:temp Decimal3 set value '[{"score": {"name": ".whole", "objective": "var"}}, ".00", {"score": {"name": ".frac", "objective": "var"}}]'
data modify storage ult:temp Decimal4 set value '[{"score": {"name": ".whole", "objective": "var"}}, ".000", {"score": {"name": ".frac", "objective": "var"}}]'

data modify storage ult:temp Decimal set from storage ult:temp Decimal1
execute if score .places control matches 2 if score .frac var matches ..9 run data modify storage ult:temp Decimal set from storage ult:temp Decimal2
execute if score .places control matches 3 if score .frac var matches ..99 run data modify storage ult:temp Decimal set from storage ult:temp Decimal2
execute if score .places control matches 3 if score .frac var matches ..9 run data modify storage ult:temp Decimal set from storage ult:temp Decimal3
execute if score .places control matches 4 if score .frac var matches ..999 run data modify storage ult:temp Decimal set from storage ult:temp Decimal2
execute if score .places control matches 4 if score .frac var matches ..99 run data modify storage ult:temp Decimal set from storage ult:temp Decimal3
execute if score .places control matches 4 if score .frac var matches ..9 run data modify storage ult:temp Decimal set from storage ult:temp Decimal4
