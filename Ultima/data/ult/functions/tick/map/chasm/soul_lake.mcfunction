playsound block.enchantment_table.use master @s ~ ~ ~ 4 0.6
tag @s add soul_lake
title @s times 0 40 10
title @s subtitle {"text": "The frozen lake of souls pulls you down...", "color": "gray", "italic": true}
title @s[tag=!soul_lake_notif] title " "
tag @s add soul_lake_notif
