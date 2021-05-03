execute store result score #temp _var run data get entity @s Health 10
scoreboard players operation #temp _var += @s x.damaged
scoreboard players set #const _var 10
scoreboard players operation #temp _var /= #const _var
execute store result score #health _var run data get entity @s Health
scoreboard players operation #temp _var -= #health _var

tag @e remove temp
function ult:data/player/get_nbt
execute at @s rotated ~ 0 positioned ^ ^ ^1 run summon armor_stand ~ ~1 ~ {Marker: true, Invisible: true, Tags: ["temp", "dmg_indicator"]}
data modify entity @e[tag=temp, limit=1] Pos set from storage ult:temp Player.Pos

execute if score #temp _var matches 0..3 run loot replace block 0 0 0 container.0 loot ult:tech/dmg/weak
execute if score #temp _var matches 4..6 run loot replace block 0 0 0 container.0 loot ult:tech/dmg/normal
execute if score #temp _var matches 7..9 run loot replace block 0 0 0 container.0 loot ult:tech/dmg/strong
execute if score #temp _var matches 10..100 run loot replace block 0 0 0 container.0 loot ult:tech/dmg/lethal

execute if score #temp _var matches 0..3 run scoreboard players set @e[tag=temp] timer 15
execute if score #temp _var matches 4..6 run scoreboard players set @e[tag=temp] timer 30
execute if score #temp _var matches 7..9 run scoreboard players set @e[tag=temp] timer 45
execute if score #temp _var matches 10..100 run scoreboard players set @e[tag=temp] timer 60

data modify entity @e[tag=temp, limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
data modify entity @e[tag=temp, limit=1] CustomNameVisible set value true
