# Close down the timer
    bossbar set ult:game_start visible false
    schedule clear ult:start/ready/timer
    scoreboard players set .ready_timeout _var -1

# Unready everyone
    execute as @a[tag=player, tag=ready] at @s run playsound entity.villager.no master @s
    tag @a remove ready
