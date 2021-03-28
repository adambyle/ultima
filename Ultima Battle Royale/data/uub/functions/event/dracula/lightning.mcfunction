data merge entity @s {Trident: {tag: {Dead: true}}}
summon lightning_bolt ~ ~ ~
execute if predicate uub:steal_trident at @s run function uub:event/dracula/steal
