function ult:data/player/get_nbt

execute if score @s parkour matches 1 run data modify storage ult:temp GlobalData set from storage ult:players Global.Parkour.manor
execute if score @s parkour matches 1 run data modify storage ult:temp PlayerData set from storage ult:temp Player.Parkour.manor

execute store result score #wr _var run data get storage ult:temp GlobalData.Full.Time
execute if score @s timer <= #wr _var run function ult:parkour/world_record
execute store result score #pb _var run data get storage ult:temp PlayerData.Full
execute if score @s timer > #wr _var if score @s timer < #pb _var run function ult:parkour/personal_best
scoreboard players operation #time _var = @s timer
function ult:data/ender_chest/time
execute if score @s timer > #wr _var if score @s timer >= #pb _var at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.6
execute if score @s timer > #wr _var if score @s timer >= #pb _var run tellraw @s [{"text": "You finished the full course in "}, {"storage": "ult:temp", "nbt": "Time", "color": "gray", "interpret": true}]

scoreboard players set @s round 2

execute if score @s parkour matches 1 run data modify storage ult:players Global.Parkour.manor set from storage ult:temp GlobalData
execute if score @s parkour matches 1 run data modify storage ult:temp Player.Parkour.manor set from storage ult:temp PlayerData
function ult:data/player/save_nbt
