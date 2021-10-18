data modify storage ult:temp Array set from storage ult:temp Sample
function ult:data/nbt/filter
execute store result score .entries var run data get storage ult:temp SubArray
scoreboard players operation .num var = .entries var
scoreboard players operation .num var *= .const var
scoreboard players operation .num var /= .sample var
