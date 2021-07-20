# Don't explode if nearest player is the thrower of the powerball
    data modify storage ult:temp UUID set from entity @s Owner
    execute store success score .effect _var run data modify storage ult:temp UUID set from entity @p[tag=player, tag=alive] UUID

# If there is a nearby (non-owner) player, explode/effect
    execute if score .effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..3] run function ult:tick/map/boxing/powerball/explode

