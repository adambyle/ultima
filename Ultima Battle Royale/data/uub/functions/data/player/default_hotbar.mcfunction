execute unless score @s z.manor.sword matches -1.. run scoreboard players set @s z.manor.sword 0
execute unless score @s z.manor.axe matches -1.. run scoreboard players set @s z.manor.axe 1
execute unless score @s z.manor.crossbow matches -1.. run scoreboard players set @s z.manor.crossbow 2
execute unless score @s z.manor.bow matches -1.. run scoreboard players set @s z.manor.bow 3
execute unless score @s z.manor.potion matches -1.. run scoreboard players set @s z.manor.potion 8
execute unless score @s z.manor.shield matches -1.. run scoreboard players set @s z.manor.shield -1
execute unless score @s z.manor.arrows matches -1.. run scoreboard players set @s z.manor.arrows 10

execute unless score @s z.woods.sword matches -1.. run scoreboard players set @s z.woods.sword 0
execute unless score @s z.woods.bow matches -1.. run scoreboard players set @s z.woods.bow 1
execute unless score @s z.woods.gapple matches -1.. run scoreboard players set @s z.woods.gapple 8
execute unless score @s z.woods.arrows matches -1.. run scoreboard players set @s z.woods.arrows 10

execute unless score @s z.abyss.sword matches -1.. run scoreboard players set @s z.abyss.sword 0
execute unless score @s z.abyss.bow matches -1.. run scoreboard players set @s z.abyss.bow 1
execute unless score @s z.abyss.ingot matches -1.. run scoreboard players set @s z.abyss.ingot 7
execute unless score @s z.abyss.arrows matches -1.. run scoreboard players set @s z.abyss.arrows 10
execute unless score @s z.abyss.potion matches -1.. run scoreboard players set @s z.abyss.potion 8
execute unless score @s z.abyss.rod matches -1.. run scoreboard players set @s z.abyss.rod 2

execute unless score @s z.dungeon.axe matches -1.. run scoreboard players set @s z.dungeon.axe 0
execute unless score @s z.dungeon.speed matches -1.. run scoreboard players set @s z.dungeon.speed 8
execute unless score @s z.dungeon.sneak matches -1.. run scoreboard players set @s z.dungeon.sneak 7
execute unless score @s z.dungeon.harm matches -1.. run scoreboard players set @s z.dungeon.harm 6
execute unless score @s z.dungeon.shield matches -1.. run scoreboard players set @s z.dungeon.shield -1

execute unless score @s z.citadel.sword matches -1.. run scoreboard players set @s z.citadel.sword 0
execute unless score @s z.citadel.axe matches -1.. run scoreboard players set @s z.citadel.axe 1
execute unless score @s z.citadel.bow matches -1.. run scoreboard players set @s z.citadel.bow 2
execute unless score @s z.citadel.arrows matches -1.. run scoreboard players set @s z.citadel.arrows 10
execute unless score @s z.citadel.shield matches -1.. run scoreboard players set @s z.citadel.shield -1
execute unless score @s z.citadel.pearls matches -1.. run scoreboard players set @s z.citadel.pearls 8

execute unless score @s z.reflect.sword matches -1.. run scoreboard players set @s z.reflect.sword 0
execute unless score @s z.reflect.bow matches -1.. run scoreboard players set @s z.reflect.bow 1
execute unless score @s z.reflect.arrows matches -1.. run scoreboard players set @s z.reflect.arrows -1
execute unless score @s z.reflect.pearls matches -1.. run scoreboard players set @s z.reflect.pearls 8

execute unless score @s z.dracula.sword matches -1.. run scoreboard players set @s z.dracula.sword 0
execute unless score @s z.dracula.bow matches -1.. run scoreboard players set @s z.dracula.bow 1
execute unless score @s z.dracula.arrows matches -1.. run scoreboard players set @s z.dracula.arrows 10
execute unless score @s z.dracula.weak matches -1.. run scoreboard players set @s z.dracula.weak 8
execute unless score @s z.dracula.harm matches -1.. run scoreboard players set @s z.dracula.harm 7

execute unless score @s z.avanto.sword matches -1.. run scoreboard players set @s z.avanto.sword 0
execute unless score @s z.avanto.bow matches -1.. run scoreboard players set @s z.avanto.bow 1
execute unless score @s z.avanto.arrows matches -1.. run scoreboard players set @s z.avanto.arrows 10
execute unless score @s z.avanto.jump matches -1.. run scoreboard players set @s z.avanto.jump 8

execute unless score @s z.boxing.potion matches -1.. run scoreboard players set @s z.boxing.potion 8
execute unless score @s z.boxing.ball matches -1.. run scoreboard players set @s z.boxing.ball 1

execute unless score @s z.wastes.sword matches -1.. run scoreboard players set @s z.wastes.sword 0
execute unless score @s z.wastes.bow matches -1.. run scoreboard players set @s z.wastes.bow 1
execute unless score @s z.wastes.bomb matches -1.. run scoreboard players set @s z.wastes.bomb 2
execute unless score @s z.wastes.arrows matches -1.. run scoreboard players set @s z.wastes.arrows 10
execute unless score @s z.wastes.rabbit matches -1.. run scoreboard players set @s z.wastes.rabbit 8

function uub:data/player/get_nbt

execute unless data storage uub:temp Player.Hotbar.manor.sword store result storage uub:temp Player.Hotbar.manor.sword int 1 run scoreboard players get @s z.manor.sword
execute unless data storage uub:temp Player.Hotbar.manor.axe store result storage uub:temp Player.Hotbar.manor.axe int 1 run scoreboard players get @s z.manor.axe
execute unless data storage uub:temp Player.Hotbar.manor.crossbow store result storage uub:temp Player.Hotbar.manor.crossbow int 1 run scoreboard players get @s z.manor.crossbow
execute unless data storage uub:temp Player.Hotbar.manor.bow store result storage uub:temp Player.Hotbar.manor.bow int 1 run scoreboard players get @s z.manor.bow
execute unless data storage uub:temp Player.Hotbar.manor.potion store result storage uub:temp Player.Hotbar.manor.potion int 1 run scoreboard players get @s z.manor.potion
execute unless data storage uub:temp Player.Hotbar.manor.shield store result storage uub:temp Player.Hotbar.manor.shield int 1 run scoreboard players get @s z.manor.shield 
execute unless data storage uub:temp Player.Hotbar.manor.arrows store result storage uub:temp Player.Hotbar.manor.arrows int 1 run scoreboard players get @s z.manor.arrows

execute unless data storage uub:temp Player.Hotbar.woodlands.sword store result storage uub:temp Player.Hotbar.woodlands.sword int 1 run scoreboard players get @s z.woods.sword
execute unless data storage uub:temp Player.Hotbar.woodlands.bow store result storage uub:temp Player.Hotbar.woodlands.bow int 1 run scoreboard players get @s z.woods.bow
execute unless data storage uub:temp Player.Hotbar.woodlands.gapple store result storage uub:temp Player.Hotbar.woodlands.gapple int 1 run scoreboard players get @s z.woods.gapple
execute unless data storage uub:temp Player.Hotbar.woodlands.arrows store result storage uub:temp Player.Hotbar.woodlands.arrows int 1 run scoreboard players get @s z.woods.arrows

execute unless data storage uub:temp Player.Hotbar.dungeon.axe store result storage uub:temp Player.Hotbar.dungeon.axe int 1 run scoreboard players get @s z.dungeon.axe
execute unless data storage uub:temp Player.Hotbar.dungeon.frenzy_pot store result storage uub:temp Player.Hotbar.dungeon.frenzy_pot int 1 run scoreboard players get @s z.dungeon.speed
execute unless data storage uub:temp Player.Hotbar.dungeon.stealh_pot store result storage uub:temp Player.Hotbar.dungeon.stealh_pot int 1 run scoreboard players get @s z.dungeon.sneak
execute unless data storage uub:temp Player.Hotbar.dungeon.harm_pot store result storage uub:temp Player.Hotbar.dungeon.harm_pot int 1 run scoreboard players get @s z.dungeon.harm
execute unless data storage uub:temp Player.Hotbar.dungeon.shield store result storage uub:temp Player.Hotbar.dungeon.shield int 1 run scoreboard players get @s z.dungeon.shield

execute unless data storage uub:temp Player.Hotbar.abyss.sword store result storage uub:temp Player.Hotbar.abyss.sword int 1 run scoreboard players get @s z.abyss.sword
execute unless data storage uub:temp Player.Hotbar.abyss.bow store result storage uub:temp Player.Hotbar.abyss.bow int 1 run scoreboard players get @s z.abyss.bow
execute unless data storage uub:temp Player.Hotbar.abyss.ingot store result storage uub:temp Player.Hotbar.abyss.ingot int 1 run scoreboard players get @s z.abyss.ingot
execute unless data storage uub:temp Player.Hotbar.abyss.arrows store result storage uub:temp Player.Hotbar.abyss.arrows int 1 run scoreboard players get @s z.abyss.arrows
execute unless data storage uub:temp Player.Hotbar.abyss.potion store result storage uub:temp Player.Hotbar.abyss.potion int 1 run scoreboard players get @s z.abyss.potion
execute unless data storage uub:temp Player.Hotbar.abyss.fishing_rod store result storage uub:temp Player.Hotbar.abyss.fishing_rod int 1 run scoreboard players get @s z.abyss.rod

execute unless data storage uub:temp Player.Hotbar.citadel.sword store result storage uub:temp Player.Hotbar.citadel.sword int 1 run scoreboard players get @s z.citadel.sword
execute unless data storage uub:temp Player.Hotbar.citadel.axe store result storage uub:temp Player.Hotbar.citadel.axe int 1 run scoreboard players get @s z.citadel.axe
execute unless data storage uub:temp Player.Hotbar.citadel.crossbow store result storage uub:temp Player.Hotbar.citadel.crossbow int 1 run scoreboard players get @s z.citadel.bow
execute unless data storage uub:temp Player.Hotbar.citadel.arrows store result storage uub:temp Player.Hotbar.citadel.arrows int 1 run scoreboard players get @s z.citadel.arrows
execute unless data storage uub:temp Player.Hotbar.citadel.shield store result storage uub:temp Player.Hotbar.citadel.shield int 1 run scoreboard players get @s z.citadel.shield 
execute unless data storage uub:temp Player.Hotbar.citadel.pearls store result storage uub:temp Player.Hotbar.citadel.pearls int 1 run scoreboard players get @s z.citadel.pearls

execute unless data storage uub:temp Player.Hotbar.reflection.sword store result storage uub:temp Player.Hotbar.reflection.sword int 1 run scoreboard players get @s z.reflect.sword
execute unless data storage uub:temp Player.Hotbar.reflection.crossbow store result storage uub:temp Player.Hotbar.reflection.crossbow int 1 run scoreboard players get @s z.reflect.bow
execute unless data storage uub:temp Player.Hotbar.reflection.rocket store result storage uub:temp Player.Hotbar.reflection.rocket int 1 run scoreboard players get @s z.reflect.arrows 
execute unless data storage uub:temp Player.Hotbar.reflection.pearls store result storage uub:temp Player.Hotbar.reflection.pearls int 1 run scoreboard players get @s z.reflect.pearls

execute unless data storage uub:temp Player.Hotbar.dracula.sword store result storage uub:temp Player.Hotbar.dracula.sword int 1 run scoreboard players get @s z.dracula.sword
execute unless data storage uub:temp Player.Hotbar.dracula.crossbow store result storage uub:temp Player.Hotbar.dracula.crossbow int 1 run scoreboard players get @s z.dracula.bow
execute unless data storage uub:temp Player.Hotbar.dracula.arrows store result storage uub:temp Player.Hotbar.dracula.arrows int 1 run scoreboard players get @s z.dracula.arrows
execute unless data storage uub:temp Player.Hotbar.dracula.weak_pot store result storage uub:temp Player.Hotbar.dracula.weak_pot int 1 run scoreboard players get @s z.dracula.weak
execute unless data storage uub:temp Player.Hotbar.dracula.harm_pot store result storage uub:temp Player.Hotbar.dracula.harm_pot int 1 run scoreboard players get @s z.dracula.harm

execute unless data storage uub:temp Player.Hotbar.avanto.sword store result storage uub:temp Player.Hotbar.avanto.sword int 1 run scoreboard players get @s z.avanto.sword
execute unless data storage uub:temp Player.Hotbar.avanto.bow store result storage uub:temp Player.Hotbar.avanto.bow int 1 run scoreboard players get @s z.avanto.bow
execute unless data storage uub:temp Player.Hotbar.avanto.arrows store result storage uub:temp Player.Hotbar.avanto.arrows int 1 run scoreboard players get @s z.avanto.arrows
execute unless data storage uub:temp Player.Hotbar.avanto.potion store result storage uub:temp Player.Hotbar.avanto.potion int 1 run scoreboard players get @s z.avanto.jump

execute unless data storage uub:temp Player.Hotbar.boxing.potion store result storage uub:temp Player.Hotbar.boxing.potion int 1 run scoreboard players get @s z.boxing.potion
execute unless data storage uub:temp Player.Hotbar.boxing.powerball store result storage uub:temp Player.Hotbar.boxing.powerball int 1 run scoreboard players get @s z.boxing.ball

execute unless data storage uub:temp Player.Hotbar.wasteland.sword store result storage uub:temp Player.Hotbar.wasteland.sword int 1 run scoreboard players get @s z.wastes.sword
execute unless data storage uub:temp Player.Hotbar.wasteland.crossbow store result storage uub:temp Player.Hotbar.wasteland.crossbow int 1 run scoreboard players get @s z.wastes.bow
execute unless data storage uub:temp Player.Hotbar.wasteland.bomb store result storage uub:temp Player.Hotbar.wasteland.bomb int 1 run scoreboard players get @s z.wastes.bomb
execute unless data storage uub:temp Player.Hotbar.wasteland.arrows store result storage uub:temp Player.Hotbar.wasteland.arrows int 1 run scoreboard players get @s z.wastes.arrows
execute unless data storage uub:temp Player.Hotbar.wasteland.meat store result storage uub:temp Player.Hotbar.wasteland.meat int 1 run scoreboard players get @s z.wastes.rabbit

execute unless data storage uub:temp Player.Hotbar.townsquare.sword run data modify storage uub:temp Player.Hotbar.townsquare.sword set value 0
execute unless data storage uub:temp Player.Hotbar.townsquare.axe run data modify storage uub:temp Player.Hotbar.townsquare.axe set value 1
execute unless data storage uub:temp Player.Hotbar.townsquare.shield run data modify storage uub:temp Player.Hotbar.townsquare.shield set value -1
execute unless data storage uub:temp Player.Hotbar.townsquare.bow run data modify storage uub:temp Player.Hotbar.townsquare.bow set value 2

function uub:data/player/save_nbt
