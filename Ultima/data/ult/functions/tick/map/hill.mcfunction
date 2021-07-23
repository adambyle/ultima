# Players on the black glass have fallen off
    execute as @a[tag=player, tag=alive, scores={altitude=19}, nbt={OnGround: true}] run function ult:tick/map/hill/felloff

# Phase change test
    # Countdown
    execute if score .phase event matches 1 if predicate ult:coin_flip run scoreboard players remove .map event 1
    execute if score .phase event matches 2 run scoreboard players remove .map event 1
    # Beatdown phase test (only if player is ready to be king)
    execute if score .map event matches ..0 if score .phase event matches 1 at @a[tag=player, tag=alive, nbt={OnGround: true}] if block ~ ~-1 ~ red_stained_glass run function ult:tick/map/hill/phase/beatdown
    # Capture phase test
    execute if score .map event matches ..0 if score .phase event matches 2 run function ult:tick/map/hill/phase/capture
    # Move to capture phase if king is killed
    execute if score .phase event matches 2 unless entity @a[tag=hill_king, tag=alive] run function ult:tick/map/hill/phase/capture

# Phase notification
    execute if score .phase event matches 1 run title @a[tag=player, tag=alive] actionbar {"text": "Fight for the center!", "color": "aqua"}
    execute if score .phase event matches 2 run title @a[tag=hill_king, tag=player, tag=alive] actionbar {"text": "Shoot your opponents!", "color": "green"}
    execute if score .phase event matches 2 run title @a[tag=!hill_king, tag=player, tag=alive] actionbar {"text": "Run from the King!", "color": "red"}

# Give the king a particle effect
    execute at @a[tag=hill_king] run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.2 1

# Give the players their items
    execute as @a[tag=hill_king] unless data entity @s SelectedItem.tag{Charged: true} run function ult:tick/map/hill/charge_crossbow
    execute if score .phase event matches 1 run item replace entity @a[nbt=!{Inventory: [{id: "minecraft:stick"}]}] weapon.mainhand with stick{Enchantments: [{id: "minecraft:knockback", lvl: 3s}]}
    execute if score .phase event matches 2 run clear @a stick

# Players should take less damage even without armor
    effect give @a resistance 99999 2 true
