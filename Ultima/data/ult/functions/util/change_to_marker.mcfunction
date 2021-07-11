execute at @s run summon marker
execute at @s run data modify entity @e[type=marker, sort=nearest, limit=1] Tags set from entity @s Tags
kill @s
