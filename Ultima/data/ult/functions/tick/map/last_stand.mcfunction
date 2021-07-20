# Crouch with coal to throw cannonball
    execute as @a[scores={crouch_mode=1}, nbt={SelectedItem: {id: "minecraft:coal"}}] at @s anchored eyes run function ult:tick/map/last_stand/cannonball

# Handle cannonballs
    tag @e remove exploded
    # Temporary patch to prevent lobby explosions
    summon marker 45 30 -12 {Tags: ["no_explosions"]}
    # If two cannonballs come near each other (collide), they explode
    execute as @e[type=fireball] at @s if entity @e[type=fireball, distance=0.01..5] unless entity @e[tag=no_explosions, distance=..20] run function ult:tick/map/last_stand/cannonball/explode
    # Make the trackers keep up
    execute as @e[type=fireball] at @s run tp @e[sort=nearest, limit=1, tag=fireball_tracker, distance=..3] @s
    # If a tracker loses a fireball, explode
    execute as @e[tag=fireball_tracker] at @s unless entity @e[type=fireball, distance=..1] unless entity @e[tag=no_explosions, distance=..20] run function ult:tick/map/last_stand/cannonball/explode
    # Remove lobby marker
    kill @e[tag=no_explosions]

# Control skill shrine activity
    # If the lectern is there, active
    execute as @e[tag=last_stand_skill] at @s if block ~ ~-1 ~ lectern run function ult:tick/map/last_stand/skill/active_marker
    # Otherwise, inactive
    execute as @e[tag=last_stand_skill] at @s unless block ~ ~-1 ~ lectern run function ult:tick/map/last_stand/skill/inactive_marker

# Crouch near active shrines to apply the skill
    execute as @a[tag=player, tag=alive, scores={crouch_mode=1}] at @s at @e[tag=last_stand_skill, distance=..3] if block ~ ~-1 ~ lectern unless score @s event.skill = @e[sort=nearest, limit=1, tag=last_stand_skill] event.skill run function ult:tick/map/last_stand/skill/apply

# Active skill hotbar display
    title @a[tag=player, tag=alive, scores={event.skill=0}] actionbar [{"text": "Active skill: "}, {"text": "None", "color": "dark_red", "bold": true}]
    title @a[tag=player, tag=alive, scores={event.skill=1}] actionbar [{"text": "Active skill: "}, {"text": "Flurry Rush", "color": "blue", "bold": true}]
    title @a[tag=player, tag=alive, scores={event.skill=2}] actionbar [{"text": "Active skill: "}, {"text": "Hot Pursuit", "color": "blue", "bold": true}]
    title @a[tag=player, tag=alive, scores={event.skill=3}] actionbar [{"text": "Active skill: "}, {"text": "Combonatrix", "color": "blue", "bold": true}]
    title @a[tag=player, tag=alive, scores={event.skill=4}] actionbar [{"text": "Active skill: "}, {"text": "Backstabbing", "color": "blue", "bold": true}]

# Skill specific functions
    # If damage was dealt, do flurry rush (flurry rush)
    execute as @a[tag=player, tag=alive, scores={damage_dealt=0.., event.skill=1}] at @s run function ult:tick/map/last_stand/flurry/flurry
    # If time ran out, disable combo (combonatrix)
    execute as @a[tag=player, tag=alive, scores={event=0, event.skill=3}] run function ult:tick/map/last_stand/combo/remove
    # If damage was dealth, enable combo (combonatrix)
    execute as @a[tag=player, tag=alive, scores={damage_dealt=0.., event.skill=3}] run function ult:tick/map/last_stand/combo/apply
    # Test for strength capabilities (backstabbing)
    execute as @a[tag=player, tag=alive, scores={event.skill=4}] at @s anchored eyes run function ult:tick/map/last_stand/backstab/test

# Countdown combo timer (combonatrix)
    scoreboard players remove @a[tag=player, tag=alive, scores={event=1..}] event 1

# Randomize flurry rush teleportation
    scoreboard players add .map event.skill_inc 1
    execute if score .map event.skill_inc matches 5.. run scoreboard players set .map event.skill_inc 1
