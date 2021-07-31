data modify storage ult:temp SubArray append from storage ult:temp Merge
data modify storage ult:temp SubArray[0].count set value 1
execute store success storage ult:temp SubArray[0].wins int 1 if data storage ult:temp Game{win: true}
