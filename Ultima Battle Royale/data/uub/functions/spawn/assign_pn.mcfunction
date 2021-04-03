function uub:data/root

# Add 1 to player id, and if it is taken keep incrementing
scoreboard players add @s pn 1

##say ADDING 1 TO PLAYER ID! NOW AT:
##tellraw @a {"score": {"name": "@s", "objective": "pn"}}
##
##say PLAYER ID IS TAKEN!

execute as @a[tag=alive,tag=!root,tag=player] if score @s pn = @r[tag=root] pn as @r[tag=root] run function uub:spawn/assign_pn
