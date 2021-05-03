scoreboard players add @s y.voteskip 1
execute if score @s y.voteskip matches 4.. run scoreboard players set @s y.voteskip 1

execute if score @s y.voteskip matches 1 at @s run playsound entity.villager.work_librarian master @s
execute if score @s y.voteskip matches 2 at @s run playsound block.wood.place master @s
execute if score @s y.voteskip matches 3 at @s run playsound entity.villager.no master @s
