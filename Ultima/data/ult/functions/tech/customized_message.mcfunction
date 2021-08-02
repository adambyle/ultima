function ult:data/player/get
data modify storage ult:temp Chat set from storage ult:temp Player.Chat.channel
execute store success score .small_merge _var run data modify storage ult:temp Chat merge from storage ult:temp SmallChannel
execute store success score .big_merge _var run data modify storage ult:temp Chat merge from storage ult:temp BigChannel

execute if score .small_merge _var matches 0 run tellraw @s {"storage": "ult:temp", "nbt": "LittleMessage", "interpret": true}
execute if score .big_merge _var matches 0 run tellraw @s {"storage": "ult:temp", "nbt": "BigMessage", "interpret": true}
