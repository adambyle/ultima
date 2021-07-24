# Infinite pearls
    execute as @a[tag=alive, nbt=!{Inventory: [{id: "minecraft:ender_pearl"}]}] run function ult:tick/map/citadel/pearl

# Regen poppy patches
    execute positioned 70 28 8 run effect give @a[tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true
    execute positioned 84 28 22 run effect give @a[tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true
    execute positioned 84 28 8 run effect give @a[tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true
    execute positioned 70 28 22 run effect give @a[tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true

# Rune randomization
    scoreboard players add .map_rune _var 1
    execute if predicate ult:coin_flip run scoreboard players add .map_rune _var 1
    execute if score .map_rune _var matches 5.. run scoreboard players remove .map_rune _var 4

# Decrease timer and summon rune at 0
    execute unless entity @e[tag=citadel_rune] if predicate ult:coin_flip run scoreboard players remove .map event 1
    execute if score .map event matches 0 run function ult:tick/map/citadel/summon_rune

# Crouch with rune in either hand to apply
    execute as @a[tag=alive, nbt={SelectedItem: {id: "minecraft:globe_banner_pattern"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/citadel/activate_rune
    execute as @a[tag=alive, nbt={Inventory: [{id: "minecraft:globe_banner_pattern", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/citadel/activate_rune

# Tell players what rune they have applied
    execute as @a[tag=alive] if score @s event.rune = event.rune.none const run title @s actionbar ""
    execute as @a[tag=alive] if score @s event.rune = event.rune.speed const run title @s actionbar {"text": "Δ Rune Applied -- Speed Up", "bold": true, "color": "#F8961E"}
    execute as @a[tag=alive] if score @s event.rune = event.rune.health const run title @s actionbar {"text": "Π Rune Applied -- Health Up", "bold": true, "color": "#F94144"}
    execute as @a[tag=alive] if score @s event.rune = event.rune.attack const run title @s actionbar {"text": "Σ Rune Applied -- Attack Up", "bold": true, "color": "#43AA8B"}
    execute as @a[tag=alive] if score @s event.rune = event.rune.defense const run title @s actionbar {"text": "Γ Rune Applied -- Defense Up", "bold": true, "color": "#90BE6D"}

# Auto-refill crossbow
    execute as @a[nbt={SelectedItem: {id: "minecraft:crossbow"}, Inventory: [{id: "minecraft:arrow"}]}, nbt=!{SelectedItem: {tag: {Charged: true}}}] run function ult:tick/map/citadel/refill_arrow
