function ult:spawn/assign_queue

tag @s remove key_shown
data modify storage ult:temp Key set value {dieDuels: true}
execute as @s[tag=!key_shown] run function ult:tick/action/key_point
