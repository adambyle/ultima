execute if entity @a[tag=player, tag=change_modes] run function ult:settings/mode/change/confirm
execute unless entity @a[tag=player, tag=change_modes] run function ult:settings/mode/change/first
execute unless entity @a[tag=player, tag=!change_modes] run function ult:reset
