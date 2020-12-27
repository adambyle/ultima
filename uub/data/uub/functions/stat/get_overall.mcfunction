tellraw @s ""
tellraw @s [{"text": "-- STATISTICS --","color": "red"}]

tellraw @s ""
tellraw @s [{"text": "Games played: ","color": "gold"},{"score": {"name": "@s","objective": "s.play"},"color": "white"}]
tellraw @s [{"text": "Games won: ","color": "gold"},{"score": {"name": "@s","objective": "s.win"},"color": "white"}]

scoreboard players operation plays n = @s s.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.win
scoreboard players set c n 10000
scoreboard players operation wins n *= c n
scoreboard players operation wins n /= plays n

scoreboard players operation whole n = wins n
scoreboard players operation decim n = wins n
scoreboard players set c n 100
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

tellraw @s [{"text": "Win rate: ","color": "gold"},{"score": {"name": "whole","objective": "n"},"color": "white"},{"text": ".","color": "white"},{"score": {"name": "decim","objective": "n"},"color": "white"},{"text": "%","color": "white"}]

tellraw @s ""
tellraw @s [{"text": "Total kills: ","color": "gold"},{"score": {"name": "@s","objective": "s.kills"},"color": "white"}]
tellraw @s [{"text": "Total deaths: ","color": "gold"},{"score": {"name": "@s","objective": "s.deaths"},"color": "white"}]

scoreboard players operation deaths n = @s s.deaths
execute if score deaths n matches 0 run scoreboard players set deaths n 1
scoreboard players operation kills n = @s s.kills
scoreboard players set c n 100
scoreboard players operation kills n *= c n
scoreboard players operation kills n /= deaths n

scoreboard players operation whole n = kills n
scoreboard players operation decim n = kills n
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

tellraw @s [{"text": "Kill / death ratio: ","color": "gold"},{"score": {"name": "whole","objective": "n"},"color": "white"},{"text": ".","color": "white"},{"score": {"name": "decim","objective": "n"},"color": "white"}]

scoreboard players set map_max n 1
scoreboard players set map_min n 1

scoreboard players operation wins n = @s s.manor.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.manor.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation max n = wins n
scoreboard players operation max n /= plays n
scoreboard players operation min n = max n

scoreboard players operation wins n = @s s.woodlands.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.woodlands.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 2
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 2
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.dungeon.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.dungeon.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 3
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 3
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.abyss.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.abyss.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 4
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 4
execute if score rat n < min n run scoreboard players operation min n = rat n

tellraw @s ""
execute if score map_max n matches 1 run tellraw @s [{"text": "Best map: ","color": "gold"},{"text": "Manor","color": "white"}]
execute if score map_max n matches 2 run tellraw @s [{"text": "Best map: ","color": "gold"},{"text": "Woodlands","color": "white"}]
execute if score map_max n matches 3 run tellraw @s [{"text": "Best map: ","color": "gold"},{"text": "Dungeon","color": "white"}]
execute if score map_max n matches 4 run tellraw @s [{"text": "Best map: ","color": "gold"},{"text": "Abyss","color": "white"}]
execute if score map_min n matches 1 run tellraw @s [{"text": "Worst map: ","color": "gold"},{"text": "Manor","color": "white"}]
execute if score map_min n matches 2 run tellraw @s [{"text": "Worst map: ","color": "gold"},{"text": "Woodlands","color": "white"}]
execute if score map_min n matches 3 run tellraw @s [{"text": "Worst map: ","color": "gold"},{"text": "Dungeon","color": "white"}]
execute if score map_min n matches 4 run tellraw @s [{"text": "Worst map: ","color": "gold"},{"text": "Abyss","color": "white"}]
