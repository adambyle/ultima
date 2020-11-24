tag @a remove player
tag @s add player
execute as @a[tag=alive] if score @s pn = @r[tag=player] tether run title @a[tag=player] actionbar [{"text": "Tethered to "},{"selector": "@s"}]
