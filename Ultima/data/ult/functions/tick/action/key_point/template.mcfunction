scoreboard players set @s showedkey 0
data modify storage ult:temp Key set value {_: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point
