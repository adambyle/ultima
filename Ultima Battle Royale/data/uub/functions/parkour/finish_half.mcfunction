function uub:data/player/get_nbt

execute if score @s parkour matches 1 run data modify storage uub:temp GlobalData set from storage uub:players Global.Parkour.manor
execute if score @s parkour matches 1 run data modify storage uub:temp PlayerData set from storage uub:temp Player.Parkour.manor

execute if score @s parkour matches 1 store result score #wr _var run data get storage uub:temp GlobalData.Half.Time
execute if score @s timer <= #wr _var run function uub:parkour/world_record
execute if score @s parkour matches 1 store result score #pb _var run data get storage uub:temp PlayerData.Half
execute if score @s timer > #wr _var if score @s timer < #pb _var run function uub:parkour/personal_best
scoreboard players operation #time _var = @s timer
function uub:data/ender_chest/time
execute if score @s timer > #wr _var if score @s timer >= #pb _var at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.6
execute if score @s timer > #wr _var if score @s timer >= #pb _var run tellraw @s [{"text": "You finished in "}, {"storage": "uub:temp", "nbt": "Time", "color": "gray", "interpret": true}]

scoreboard players set @s round 1

execute if score @s parkour matches 1 run data modify storage uub:players Global.Parkour.manor set from storage uub:temp GlobalData
execute if score @s parkour matches 1 run data modify storage uub:temp Player.Parkour.manor set from storage uub:temp PlayerData
function uub:data/player/save_nbt
