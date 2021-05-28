data modify storage ult:temp KeyTest set from storage ult:temp Keys[0]
data remove storage ult:temp Keys[0]

execute store success score .no_match _var run data modify storage ult:temp KeyTest set from storage ult:temp Key 

execute if score .no_match _var matches 1 if data storage ult:temp Keys[0] run function ult:tick/action/key_point/loop
