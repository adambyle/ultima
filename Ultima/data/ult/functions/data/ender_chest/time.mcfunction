scoreboard players operation #ticks _var = #time _var

scoreboard players operation #tenths _var = #ticks _var
scoreboard players set #const _var 2
scoreboard players operation #tenths _var /= #const _var
scoreboard players operation #minus _var = #tenths _var
scoreboard players operation #minus _var *= #const _var
scoreboard players operation #ticks _var -= #minus _var

scoreboard players operation #seconds _var = #tenths _var
scoreboard players set #const _var 10
scoreboard players operation #seconds _var /= #const _var
scoreboard players operation #minus _var = #seconds _var
scoreboard players operation #minus _var *= #const _var
scoreboard players operation #tenths _var -= #minus _var

scoreboard players operation #tensecs _var = #seconds _var
scoreboard players set #const _var 10
scoreboard players operation #tensecs _var /= #const _var
scoreboard players operation #minus _var = #tensecs _var
scoreboard players operation #minus _var *= #const _var
scoreboard players operation #seconds _var -= #minus _var

scoreboard players operation #minutes _var = #tensecs _var
scoreboard players set #const _var 6
scoreboard players operation #minutes _var /= #const _var
scoreboard players operation #minus _var = #minutes _var
scoreboard players operation #minus _var *= #const _var
scoreboard players operation #tensecs _var -= #minus _var

scoreboard players set #const _var 5
scoreboard players operation #ticks _var *= #const _var

loot replace block 0 0 0 container.0 loot ult:tech/time
data modify storage ult:temp Time set from block 0 0 0 Items[0].tag.display.Name
