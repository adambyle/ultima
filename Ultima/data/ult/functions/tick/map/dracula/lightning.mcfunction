data merge entity @s {Trident: {tag: {Dead: true}}}
summon lightning_bolt ~ ~ ~
execute if predicate ult:maps/dracula/steal_trident at @s run function ult:tick/map/dracula/steal
