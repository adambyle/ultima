# Crouch with coal to throw cannonball
    execute as @a[nbt={SelectedItem: {id: "minecraft:coal"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s anchored eyes run function ult:tick/map/last_stand/cannonball

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
    execute as @a[tag=alive] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s at @e[tag=last_stand_skill, distance=..3] if block ~ ~-1 ~ lectern unless score @s event.skill = @e[sort=nearest, limit=1, tag=last_stand_skill] event.skill run function ult:tick/map/last_stand/skill/apply

# Active skill hotbar display
    execute as @a[tag=alive] if score @s event.skill = event.skill.none const run title @s actionbar [{"text": "Active skill: "}, {"text": "None", "color": "#F3722C", "bold": true}]
    execute as @a[tag=alive] if score @s event.skill = event.skill.flurry_rush const run title @s actionbar [{"text": "Active skill: "}, {"text": "Flurry Rush", "color": "#577590", "bold": true}]
    execute as @a[tag=alive] if score @s event.skill = event.skill.hot_pursuit const run title @s actionbar [{"text": "Active skill: "}, {"text": "Hot Pursuit", "color": "#577590", "bold": true}]
    execute as @a[tag=alive] if score @s event.skill = event.skill.combonatrix const run title @s actionbar [{"text": "Active skill: "}, {"text": "Combonatrix", "color": "#577590", "bold": true}]
    execute as @a[tag=alive] if score @s event.skill = event.skill.backstabbing const run title @s actionbar [{"text": "Active skill: "}, {"text": "Backstabbing", "color": "#577590", "bold": true}]

# Skill specific functions
    # If damage was dealt, do flurry rush (flurry rush)
    execute as @a[tag=alive, scores={damage_dealt=0..}] if score @s event.skill = event.skill.flurry_rush const at @s run function ult:tick/map/last_stand/flurry/flurry
    # If time ran out, disable combo (combonatrix)
    execute as @a[tag=alive, scores={event=0}] if score @s event.skill = event.skill.combonatrix const run function ult:tick/map/last_stand/combo/remove
    # If damage was dealth, enable combo (combonatrix)
    execute as @a[tag=alive, scores={damage_dealt=0..}] if score @s event.skill = event.skill.combonatrix const run function ult:tick/map/last_stand/combo/apply
    # Test for strength capabilities (backstabbing)
    execute as @a[tag=alive] if score @s event.skill = event.skill.backstabbing const at @s anchored eyes run function ult:tick/map/last_stand/backstab/test

# Countdown combo timer (combonatrix)
    scoreboard players remove @a[tag=alive, scores={event=1..}] event 1

# Randomize flurry rush teleportation
    scoreboard players add .map event.skill_inc 1
    execute if score .map event.skill_inc matches 5.. run scoreboard players set .map event.skill_inc 1
