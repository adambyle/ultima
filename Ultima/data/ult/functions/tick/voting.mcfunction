execute unless entity @a[tag=voting, tag=!ready] run function ult:start/continuous/vote_finished
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function ult:settings/player/vote

