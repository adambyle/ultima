function ult:data/player/reset
function ult:settings/ender_chest/main
function ult:load/deop
bossbar set ult:game_start players @a
function ult:data/player/default_hotbar
execute as @s[tag=!played_ultima] run function ult:tick/action/first_time_playing
