execute if data storage ult:temp Player.StatMenu{timespan: 0b} run item replace entity @s enderchest.11 with gold_nugget{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 20 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}
execute if data storage ult:temp Player.StatMenu{timespan: 1b} run item replace entity @s enderchest.11 with gold_ingot{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 100 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}
execute if data storage ult:temp Player.StatMenu{timespan: 2b} run item replace entity @s enderchest.11 with gold_block{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 500 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}
execute if data storage ult:temp Player.StatMenu{timespan: 3b} run item replace entity @s enderchest.11 with netherite_block{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 2500 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}

execute if data storage ult:temp Player.StatMenu{timespan: 0b} run scoreboard players set .len control 20
execute if data storage ult:temp Player.StatMenu{timespan: 1b} run scoreboard players set .len control 100
execute if data storage ult:temp Player.StatMenu{timespan: 2b} run scoreboard players set .len control 500
execute if data storage ult:temp Player.StatMenu{timespan: 3b} run scoreboard players set .len control 2500

execute store result score .sample var run data get storage ult:temp Player.Games
execute if score .sample var < .len control run item modify entity @s enderchest.11 ult:stats/timespan_notif
