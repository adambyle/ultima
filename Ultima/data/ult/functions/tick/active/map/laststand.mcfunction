execute as @a[scores={x.crouch=1}, nbt={SelectedItem: {id: "minecraft:coal"}}] at @s anchored eyes run function ult:event/laststand/fireball

tag @e remove exploded
execute as @e[type=fireball] at @s if entity @e[type=fireball, distance=0.01..5] unless entity @e[tag=text_display, distance=..20] run function ult:event/laststand/explode
execute as @e[type=fireball] at @s run tp @e[tag=fireball_tracker, sort=nearest, limit=1, distance=..3] @s
execute as @e[tag=fireball_tracker] at @s unless entity @e[type=fireball, distance=..1] unless entity @e[tag=text_display, distance=..20] run function ult:event/laststand/explode

execute as @e[tag=laststand_skill] at @s if block ~ ~-1 ~ lectern run function ult:event/laststand/skill/active_marker
execute as @e[tag=laststand_skill] at @s unless block ~ ~-1 ~ lectern run function ult:event/laststand/skill/inactive_marker

execute as @a[tag=player, tag=alive, scores={x.crouch=1}] at @s at @e[tag=laststand_skill, distance=..3] if block ~ ~-1 ~ lectern unless score @s laststand.skill = @e[tag=laststand_skill, sort=nearest, limit=1] laststand.skill run function ult:event/laststand/skill/apply

title @a[scores={laststand.skill=0}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "None", "color": "dark_red", "bold": true}]
title @a[scores={laststand.skill=1}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Flurry Rush", "color": "blue", "bold": true}]
title @a[scores={laststand.skill=2}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Hot Pursuit", "color": "blue", "bold": true}]
title @a[scores={laststand.skill=3}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Combonatrix", "color": "blue", "bold": true}]
title @a[scores={laststand.skill=4}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Backstabbing", "color": "blue", "bold": true}]

execute as @a[tag=player, tag=alive, scores={x.damage=0.., laststand.skill=1}] at @s run function ult:event/laststand/flurry/flurry
effect give @a[tag=player, tag=alive, scores={x.damaged=1.., laststand.skill=1}] weakness 1
effect give @a[tag=player, tag=alive, scores={x.damaged=1.., laststand.skill=2}] slowness 1 1
execute as @a[tag=player, tag=alive, scores={event=0, laststand.skill=3}] run function ult:event/laststand/combo/remove
execute as @a[tag=player, tag=alive, scores={x.damage=0.., laststand.skill=3}] run function ult:event/laststand/combo/apply
execute as @a[tag=player, tag=alive, scores={laststand.skill=4}] at @s anchored eyes run function ult:event/laststand/backstab/test

scoreboard players remove @a[tag=player, tag=alive, scores={event=1..}] event 1

scoreboard players add #map laststand.level 1
execute if score #map laststand.level matches 5.. run scoreboard players set #map laststand.level 1
