scoreboard players add @s y.ready 1
execute if score @s y.ready matches 4.. run scoreboard players set @s y.ready 1

execute if score @s y.ready matches 1 at @s run playsound entity.player.attack.weak master @s
execute if score @s y.ready matches 2 at @s run playsound entity.player.attack.strong master @s
execute if score @s y.ready matches 3 at @s run playsound entity.player.attack.crit master @s
