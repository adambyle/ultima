data modify entity @s CustomNameVisible set value false
function ult:data/root
execute as @a[tag=player, tag=alive] if score @s laststand.skill = @e[tag=root, limit=1] laststand.skill run function ult:event/laststand/skill/remove
