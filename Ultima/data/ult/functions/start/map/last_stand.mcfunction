# Randomize skill shrines
    scoreboard players set @e[tag=last_stand_skill] event.skill 0
    scoreboard players set @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill 1
    scoreboard players set @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill 2
    scoreboard players set @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill 3
    scoreboard players set @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill 4

# Set shrine names
    data merge entity @e[limit=1, tag=last_stand_skill, scores={event.skill=1}] {CustomName: '{"text": "Flurry Rush (Crouch here)", "color": "green"}', CustomNameVisible: true}
    data merge entity @e[limit=1, tag=last_stand_skill, scores={event.skill=2}] {CustomName: '{"text": "Hot Pursuit (Crouch here)", "color": "green"}', CustomNameVisible: true}
    data merge entity @e[limit=1, tag=last_stand_skill, scores={event.skill=3}] {CustomName: '{"text": "Combonatrix (Crouch here)", "color": "green"}', CustomNameVisible: true}
    data merge entity @e[limit=1, tag=last_stand_skill, scores={event.skill=4}] {CustomName: '{"text": "Backstabbing (Crouch here)", "color": "green"}', CustomNameVisible: true}

# Reset skills (from previous games)
    scoreboard players set @a event.skill 0
