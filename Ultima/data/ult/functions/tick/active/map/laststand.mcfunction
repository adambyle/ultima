execute as @a[scores={crouch_mode=1}, nbt={SelectedItem: {id: "minecraft:coal"}}] at @s anchored eyes run function ult:tick/active/map/last_stand/fireball

tag @e remove exploded
execute as @e[type=fireball] at @s if entity @e[type=fireball, distance=0.01..5] unless entity @e[tag=text_display, distance=..20] run function ult:tick/active/map/last_stand/explode
execute as @e[type=fireball] at @s run tp @e[tag=fireball_tracker, sort=nearest, limit=1, distance=..3] @s
execute as @e[tag=fireball_tracker] at @s unless entity @e[type=fireball, distance=..1] unless entity @e[tag=text_display, distance=..20] run function ult:tick/active/map/last_stand/explode

execute as @e[tag=last_stand_skill] at @s if block ~ ~-1 ~ lectern run function ult:tick/active/map/last_stand/skill/active_marker
execute as @e[tag=last_stand_skill] at @s unless block ~ ~-1 ~ lectern run function ult:tick/active/map/last_stand/skill/inactive_marker

execute as @a[tag=player, tag=alive, scores={crouch_mode=1}] at @s at @e[tag=last_stand_skill, distance=..3] if block ~ ~-1 ~ lectern unless score @s event.skill = @e[tag=last_stand_skill, sort=nearest, limit=1] event.skill run function ult:tick/active/map/last_stand/skill/apply

title @a[scores={event.skill=0}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "None", "color": "dark_red", "bold": true}]
title @a[scores={event.skill=1}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Flurry Rush", "color": "blue", "bold": true}]
title @a[scores={event.skill=2}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Hot Pursuit", "color": "blue", "bold": true}]
title @a[scores={event.skill=3}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Combonatrix", "color": "blue", "bold": true}]
title @a[scores={event.skill=4}, tag=player, tag=alive] actionbar [{"text": "Active skill: "}, {"text": "Backstabbing", "color": "blue", "bold": true}]

execute as @a[tag=player, tag=alive, scores={damage_dealt=0.., event.skill=1}] at @s run function ult:tick/active/map/last_stand/flurry/flurry
execute as @a[tag=player, tag=alive, scores={event=0, event.skill=3}] run function ult:tick/active/map/last_stand/combo/remove
execute as @a[tag=player, tag=alive, scores={damage_dealt=0.., event.skill=3}] run function ult:tick/active/map/last_stand/combo/apply
execute as @a[tag=player, tag=alive, scores={event.skill=4}] at @s anchored eyes run function ult:tick/active/map/last_stand/backstab/test

scoreboard players remove @a[tag=player, tag=alive, scores={event=1..}] event 1

scoreboard players add .map event.skill_inc 1
execute if score .map event.skill_inc matches 5.. run scoreboard players set .map event.skill_inc 1
