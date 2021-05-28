tag @s remove key_shown
data modify storage ult:temp Key set value {_: true}
execute as @s[tag=!key_shown] run function ult:tick/action/key_point
