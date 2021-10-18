execute if entity @s[advancements={ult:maps/chasm/damage_dealt_pn1=true}] run scoreboard players set @s event.soul 1
execute if entity @s[advancements={ult:maps/chasm/damage_dealt_pn2=true}] run scoreboard players set @s event.soul 2
execute if entity @s[advancements={ult:maps/chasm/damage_dealt_pn3=true}] run scoreboard players set @s event.soul 3
execute if entity @s[advancements={ult:maps/chasm/damage_dealt_pn4=true}] run scoreboard players set @s event.soul 4
execute if data entity @s SelectedItem{id: "minecraft:ender_pearl"} run function ult:tick/map/chasm/hold_soul_stone
