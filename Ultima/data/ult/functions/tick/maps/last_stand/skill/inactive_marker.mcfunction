data modify entity @s CustomNameVisible set value false
function ult:data/root
execute as @a[tag=player, tag=alive] if score @s event.skill = @e[limit=1, tag=root] event.skill run function ult:tick/maps/last_stand/skill/remove
