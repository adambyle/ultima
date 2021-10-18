# Don't explode if nearest player is the thrower of the powerball
    data modify storage ult:temp UUID set from entity @s Owner
    execute store success score .effect var run data modify storage ult:temp UUID set from entity @p[tag=alive] UUID

# If there is a nearby (non-owner) player, explode/effect
    tag @e remove temp
    tag @s add temp
    execute if score .effect var matches 1 as @p[tag=alive, distance=..3] run function ult:tick/map/boxing/powerball/explode

