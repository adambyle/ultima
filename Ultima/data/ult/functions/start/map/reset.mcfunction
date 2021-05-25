execute if score #server map matches 17 run function ult:start/map/reset/ancient
execute if score #server map matches 8 run function ult:start/map/reset/last_stand
execute if score #flag game_state matches 1 as @a[tag=player, tag=alive] run function ult:spawn/items/refill
