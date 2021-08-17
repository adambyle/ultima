scoreboard players set @s _var 0
scoreboard players add @s[tag=chat.s.l] _var 1
scoreboard players add @s[tag=chat.s.d] _var 2

tag @s[scores={_var=0}] remove chat.s.e
tag @s[scores={_var=1}] remove chat.s.l
tag @s[scores={_var=2}] remove chat.s.d

tag @s[scores={_var=0}] add chat.s.l
tag @s[scores={_var=1}] add chat.s.d
tag @s[scores={_var=2}] add chat.s.e

function ult:settings/player/chat
