function ult:join

function ult:lobby
effect give @s instant_health 1 3 true

execute as @s[tag=!player, tag=!spectator] run function ult:settings/opt/in

clear
