function uub:data/root

execute as @a[tag=player, tag=alive] if score @s pn = @r[tag=root] tether run title @a[tag=root] actionbar [{"text": "Tethered to ", "color": "gray"}, {"selector": "@s", "color": "white"}]
