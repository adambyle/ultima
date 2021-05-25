data modify entity @s CustomNameVisible set value false
function ult:data/root
execute as @a[tag=player, tag=alive] if score @s event.skill = @e[tag=root, limit=1] event.skill run function ult:tick/active/map/last_stand/skill/remove
