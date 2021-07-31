data modify storage ult:temp Array set from storage ult:temp Sample
function ult:data/nbt/filter
execute store result score .entries _var run data get storage ult:temp SubArray
scoreboard players operation .num _var = .entries _var
scoreboard players operation .num _var *= .const _var
scoreboard players operation .num _var /= .sample _var
