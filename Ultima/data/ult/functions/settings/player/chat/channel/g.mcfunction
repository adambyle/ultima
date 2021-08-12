scoreboard players set @s _var 0
scoreboard players add @s[tag=chat.g.l] _var 1
scoreboard players add @s[tag=chat.g.d] _var 2

tag @s[scores={_var=0}] remove chat.g.e
tag @s[scores={_var=1}] remove chat.g.l
tag @s[scores={_var=2}] remove chat.g.d

tag @s[scores={_var=0}] add chat.g.l
tag @s[scores={_var=1}] add chat.g.d
tag @s[scores={_var=2}] add chat.g.e

function ult:settings/player/chat
