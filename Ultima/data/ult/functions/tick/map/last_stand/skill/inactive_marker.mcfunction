# Make invisible
    data modify entity @s CustomNameVisible set value false

# Make all players unlearn this skill if they have it
    function ult:data/root
    execute as @a[tag=alive] if score @s event.skill = @e[limit=1, tag=root] event.skill run function ult:tick/map/last_stand/skill/remove
