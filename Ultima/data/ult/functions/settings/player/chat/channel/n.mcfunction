scoreboard players set @s _var 0
scoreboard players add @s[tag=chat.n.l] _var 1
scoreboard players add @s[tag=chat.n.d] _var 2

tag @s[scores={_var=0}] remove chat.n.e
tag @s[scores={_var=1}] remove chat.n.l
tag @s[scores={_var=2}] remove chat.n.d

tag @s[scores={_var=0}] add chat.n.l
tag @s[scores={_var=1}] add chat.n.d
tag @s[scores={_var=2}] add chat.n.e

function ult:settings/player/chat
