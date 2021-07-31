function ult:data/player/get
execute if data storage ult:temp Player.StatMenu{mode: 0b} run function ult:settings/player/statistics/view/mode/all
execute if data storage ult:temp Player.StatMenu{mode: 1b} run function ult:settings/player/statistics/view/mode/duels
execute if data storage ult:temp Player.StatMenu{mode: 2b} run function ult:settings/player/statistics/view/mode/combined
execute if data storage ult:temp Player.StatMenu{mode: 3b} run function ult:settings/player/statistics/view/mode/royale
execute if data storage ult:temp Player.StatMenu{mode: 4b} run function ult:settings/player/statistics/view/mode/brawl
