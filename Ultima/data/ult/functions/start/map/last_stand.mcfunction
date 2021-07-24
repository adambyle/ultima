# Randomize skill shrines
    scoreboard players set @e[tag=last_stand_skill] event.skill 0
    scoreboard players operation @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill = event.skill.flurry_rush const
    scoreboard players operation @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill = event.skill.hot_pursuit const
    scoreboard players operation @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill = event.skill.combonatrix const
    scoreboard players operation @e[sort=random, limit=1, tag=last_stand_skill, scores={event.skill=0}] event.skill = event.skill.backstabbing const

# Set shrine names
    execute as @e[tag=last_stand_skill] if score @s event.skill = event.skill.flurry_rush const run data merge entity @s {CustomName: '{"text": "Flurry Rush (Crouch here)", "color": "#90BE6D"}', CustomNameVisible: true}
    execute as @e[tag=last_stand_skill] if score @s event.skill = event.skill.hot_pursuit const run data merge entity @s {CustomName: '{"text": "Hot Pursuit (Crouch here)", "color": "#90BE6D"}', CustomNameVisible: true}
    execute as @e[tag=last_stand_skill] if score @s event.skill = event.skill.combonatrix const run data merge entity @s {CustomName: '{"text": "Combonatrix (Crouch here)", "color": "#90BE6D"}', CustomNameVisible: true}
    execute as @e[tag=last_stand_skill] if score @s event.skill = event.skill.backstabbing const run data merge entity @s {CustomName: '{"text": "Backstabbing (Crouch here)", "color": "#90BE6D"}', CustomNameVisible: true}

# Reset skills (from previous games)
    scoreboard players set @a event.skill 0
