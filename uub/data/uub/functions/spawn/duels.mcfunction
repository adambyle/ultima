execute as @a unless score @s pn matches 1.. run say o
execute as @a[tag=alive] run function uub:spawn
execute unless entity @a[tag=alive] run function uub:spawn/next
function uub:spawn/next
