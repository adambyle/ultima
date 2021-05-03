execute store result score #time _var run data get storage ult:temp PlayerData.Half
function ult:data/ender_chest/time
data modify storage ult:temp HalfPersonalTime set from storage ult:temp Time
execute store result score #time _var run data get storage ult:temp PlayerData.Full
function ult:data/ender_chest/time
data modify storage ult:temp FullPersonalTime set from storage ult:temp Time
execute store result score #time _var run data get storage ult:temp GlobalData.Half.Time
function ult:data/ender_chest/time
data modify storage ult:temp HalfRecordTime set from storage ult:temp Time
execute store result score #time _var run data get storage ult:temp GlobalData.Full.Time
function ult:data/ender_chest/time
data modify storage ult:temp FullRecordTime set from storage ult:temp Time
data modify storage ult:temp HalfRecordHolder set from storage ult:temp GlobalData.Half.Name
data modify storage ult:temp FullRecordHolder set from storage ult:temp GlobalData.Full.Name
loot replace block 0 0 0 container.0 loot ult:tech/parkour_record
data modify block 0 0 0 Items[0].Slot set value 0b
