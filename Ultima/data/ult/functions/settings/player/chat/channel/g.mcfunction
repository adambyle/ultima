scoreboard players set @s var 0
scoreboard players add @s[tag=chat.g.l] var 1
scoreboard players add @s[tag=chat.g.d] var 2

tag @s[scores={var=0}] remove chat.g.e
tag @s[scores={var=1}] remove chat.g.l
tag @s[scores={var=2}] remove chat.g.d

tag @s[scores={var=0}] add chat.g.l
tag @s[scores={var=1}] add chat.g.d
tag @s[scores={var=2}] add chat.g.e

function ult:settings/player/chat
