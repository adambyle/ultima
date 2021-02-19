scoreboard players add @s y.afk 1
execute if score @s y.afk matches 5.. run scoreboard players set @s y.afk 1

execute if score @s y.afk matches 1 at @s run playsound entity.player.hurt master @s
execute if score @s y.afk matches 2 at @s run playsound entity.zombie.hurt master @s
execute if score @s y.afk matches 3 at @s run playsound entity.skeleton.hurt master @s
execute if score @s y.afk matches 4 at @s run playsound entity.wither_skeleton.hurt master @s
