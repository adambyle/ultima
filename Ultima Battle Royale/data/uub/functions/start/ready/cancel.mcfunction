bossbar set uub:game_start visible false
execute as @a[scores={ready=1},tag=player] at @s run playsound entity.villager.no master @s
scoreboard players set @a ready 0
schedule clear uub:start/ready/timer
