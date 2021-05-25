data merge entity @s {Trident: {tag: {Dead: true}}}
summon lightning_bolt ~ ~ ~
execute if predicate ult:steal_trident at @s run function ult:tick/active/map/dracula/steal
