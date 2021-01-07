scoreboard players set score_max n 0
execute as @a[team=play] if score @s kills > score_max n run scoreboard players operation score_max n = @s kills
scoreboard players add @a[tag=killtag] a.kills 1
execute if score @r[tag=killtag] kills = score_max n if score @s kills matches 3.. run scoreboard players add @a[tag=killtag] a.leader_kill 1
scoreboard players add @a[tag=killtag,scores={hp=..5}] a.leader_kill 1
execute if score @s kills matches 2.. run scoreboard players add @a[tag=killtag] a.not_underdog 1
execute if score @r[tag=killtag] tether = @s[tag=!fresh] pn run scoreboard players add @a[tag=killtag] a.avenge 1
execute as @a[team=play,tag=alive] if score @s pn = @r[tag=player] last_attacker unless entity @s[tag=killtag] run scoreboard players add @a[tag=killtag] a.steal 1
