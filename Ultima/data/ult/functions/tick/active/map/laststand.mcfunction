execute as @a[scores={x.crouch=1}, nbt={SelectedItem: {id: "minecraft:coal"}}] at @s anchored eyes run function ult:event/laststand/fireball

tag @e remove exploded
execute as @e[type=fireball] at @s if entity @e[type=fireball, distance=0.01..5] run function ult:event/laststand/explode
execute as @e[type=fireball] at @s run tp @e[tag=fireball_tracker, sort=nearest, limit=1, distance=..3] @s
execute as @e[tag=fireball_tracker] at @s unless entity @e[type=fireball, distance=..1] run function ult:event/laststand/explode

execute as @e[tag=laststand_skill] at @s if block ~ ~-1 ~ lectern run function ult:event/laststand/skill/active_marker
execute as @e[tag=laststand_skill] at @s unless block ~ ~-1 ~ lectern run function ult:event/laststand/skill/inactive_marker

execute as @a[tag=player, tag=alive, scores={x.crouch=1}] at @e[tag=laststand_skill] if block ~ ~-1 ~ lectern unless score @s laststand.skill = @e[tag=laststand_skill, sort=nearest, limit=1] laststand.skill run function ult:event/laststand/skill/apply
