execute store result score #time _var run data get storage uub:temp PlayerData.Half
function uub:data/ender_chest/time
data modify storage uub:temp HalfPersonalTime set from storage uub:temp Time
execute store result score #time _var run data get storage uub:temp PlayerData.Full
function uub:data/ender_chest/time
data modify storage uub:temp FullPersonalTime set from storage uub:temp Time
execute store result score #time _var run data get storage uub:temp GlobalData.Half.Time
function uub:data/ender_chest/time
data modify storage uub:temp HalfRecordTime set from storage uub:temp Time
execute store result score #time _var run data get storage uub:temp GlobalData.Full.Time
function uub:data/ender_chest/time
data modify storage uub:temp FullRecordTime set from storage uub:temp Time
data modify storage uub:temp HalfRecordHolder set from storage uub:temp GlobalData.Half.Name
data modify storage uub:temp FullRecordHolder set from storage uub:temp GlobalData.Full.Name
loot replace block 0 0 0 container.0 loot uub:tech/parkour_record
data modify block 0 0 0 Items[0].Slot set value 0b
