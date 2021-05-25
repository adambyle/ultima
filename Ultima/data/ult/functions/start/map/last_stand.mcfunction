scoreboard players set @e[tag=last_stand_skill] event.skill 0
scoreboard players set @e[tag=last_stand_skill, scores={event.skill=0}, sort=random, limit=1] event.skill 1
scoreboard players set @e[tag=last_stand_skill, scores={event.skill=0}, sort=random, limit=1] event.skill 2
scoreboard players set @e[tag=last_stand_skill, scores={event.skill=0}, sort=random, limit=1] event.skill 3
scoreboard players set @e[tag=last_stand_skill, scores={event.skill=0}, sort=random, limit=1] event.skill 4

data merge entity @e[tag=last_stand_skill, scores={event.skill=1}, limit=1] {CustomName: '{"text": "Flurry Rush", "color": "green"}'}
data merge entity @e[tag=last_stand_skill, scores={event.skill=2}, limit=1] {CustomName: '{"text": "Hot Pursuit", "color": "green"}'}
data merge entity @e[tag=last_stand_skill, scores={event.skill=3}, limit=1] {CustomName: '{"text": "Combonatrix", "color": "green"}'}
data merge entity @e[tag=last_stand_skill, scores={event.skill=4}, limit=1] {CustomName: '{"text": "Backstabbing", "color": "green"}'}

scoreboard players set @a event.skill 0
