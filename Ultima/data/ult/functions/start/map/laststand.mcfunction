scoreboard players set @e[tag=laststand_skill] laststand.skill 0
scoreboard players set @e[tag=laststand_skill, scores={laststand.skill=0}, sort=random, limit=1] laststand.skill 1
scoreboard players set @e[tag=laststand_skill, scores={laststand.skill=0}, sort=random, limit=1] laststand.skill 2
scoreboard players set @e[tag=laststand_skill, scores={laststand.skill=0}, sort=random, limit=1] laststand.skill 3
scoreboard players set @e[tag=laststand_skill, scores={laststand.skill=0}, sort=random, limit=1] laststand.skill 4

data merge entity @e[tag=laststand_skill, scores={laststand.skill=1}, limit=1] {CustomName: '{"text": "Flurry Rush", "color": "green"}'}
data merge entity @e[tag=laststand_skill, scores={laststand.skill=2}, limit=1] {CustomName: '{"text": "Hot Pursuit", "color": "green"}'}
data merge entity @e[tag=laststand_skill, scores={laststand.skill=3}, limit=1] {CustomName: '{"text": "Combonatrix", "color": "green"}'}
data merge entity @e[tag=laststand_skill, scores={laststand.skill=4}, limit=1] {CustomName: '{"text": "Backstabbing", "color": "green"}'}

scoreboard players set @a laststand.skill 0
