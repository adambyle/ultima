# Decrease the timer if no physical trident exists and no player has the trident
    execute unless entity @e[nbt={Trident: {tag: {Dracula: true}}}] unless entity @a[tag=alive, nbt={Inventory: [{id: "minecraft:trident"}]}] if predicate ult:coin_flip run scoreboard players remove .map event 1

# Summon trident at 0
    execute if score .map event matches 0 run function ult:tick/map/dracula/summon

# Give the thrown trident an entity tag
    data merge entity @e[limit=1, type=trident] {Fire: -1s, Glowing: true, Trident: {tag: {Dracula: true}}, pickup: 0b, damage: 4.0d}

# Kill the trident after 12s unless there is a nearby player
    execute as @e[type=trident] store result score @s var run data get entity @s life 1.0
    execute as @e[type=trident, scores={var=240..}] at @s unless entity @a[tag=alive, distance=..6] run kill @s

# Simulate Channeling (no actual thunderstorm)
    execute as @e[type=trident, nbt={DealtDamage: true}, nbt=!{Trident: {tag: {Dead: true}}}] at @s run function ult:tick/map/dracula/lightning

# Let any player pick up the trident (also simulated)
    execute as @e[type=trident, nbt={inGround: true, Trident: {tag: {Dead: true}}}] at @s if entity @a[tag=alive, distance=..2] run function ult:tick/map/dracula/give
