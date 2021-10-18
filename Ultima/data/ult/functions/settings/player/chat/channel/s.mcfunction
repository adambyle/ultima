scoreboard players set @s var 0
scoreboard players add @s[tag=chat.s.l] var 1
scoreboard players add @s[tag=chat.s.d] var 2

tag @s[scores={var=0}] remove chat.s.e
tag @s[scores={var=1}] remove chat.s.l
tag @s[scores={var=2}] remove chat.s.d

tag @s[scores={var=0}] add chat.s.l
tag @s[scores={var=1}] add chat.s.d
tag @s[scores={var=2}] add chat.s.e

function ult:settings/player/chat
