scoreboard players set @s var 0
scoreboard players add @s[tag=chat.n.l] var 1
scoreboard players add @s[tag=chat.n.d] var 2

tag @s[scores={var=0}] remove chat.n.e
tag @s[scores={var=1}] remove chat.n.l
tag @s[scores={var=2}] remove chat.n.d

tag @s[scores={var=0}] add chat.n.l
tag @s[scores={var=1}] add chat.n.d
tag @s[scores={var=2}] add chat.n.e

function ult:settings/player/chat
