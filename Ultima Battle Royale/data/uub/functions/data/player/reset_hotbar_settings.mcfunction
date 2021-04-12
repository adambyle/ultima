scoreboard players set @s z.manor.sword 0
scoreboard players set @s z.manor.axe 1
scoreboard players set @s z.manor.crossbow 2
scoreboard players set @s z.manor.bow 3
scoreboard players set @s z.manor.potion 8
scoreboard players set @s z.manor.shield -1
scoreboard players set @s z.manor.arrows 10

scoreboard players set @s z.woods.sword 0
scoreboard players set @s z.woods.bow 1
scoreboard players set @s z.woods.gapple 8
scoreboard players set @s z.woods.arrows 10

scoreboard players set @s z.abyss.sword 0
scoreboard players set @s z.abyss.bow 1
scoreboard players set @s z.abyss.ingot 7
scoreboard players set @s z.abyss.arrows 10
scoreboard players set @s z.abyss.potion 8
scoreboard players set @s z.abyss.rod 2

scoreboard players set @s z.dungeon.axe 0
scoreboard players set @s z.dungeon.speed 8
scoreboard players set @s z.dungeon.sneak 7
scoreboard players set @s z.dungeon.harm 6
scoreboard players set @s z.dungeon.shield -1

scoreboard players set @s z.citadel.sword 0
scoreboard players set @s z.citadel.axe 1
scoreboard players set @s z.citadel.bow 2
scoreboard players set @s z.citadel.arrows 10
scoreboard players set @s z.citadel.shield -1
scoreboard players set @s z.citadel.pearls 8

scoreboard players set @s z.reflect.sword 0
scoreboard players set @s z.reflect.bow 1
scoreboard players set @s z.reflect.arrows -1
scoreboard players set @s z.reflect.pearls 8

scoreboard players set @s z.dracula.sword 0
scoreboard players set @s z.dracula.bow 1
scoreboard players set @s z.dracula.arrows 10
scoreboard players set @s z.dracula.weak 8
scoreboard players set @s z.dracula.harm 7

scoreboard players set @s z.avanto.sword 0
scoreboard players set @s z.avanto.bow 1
scoreboard players set @s z.avanto.arrows 10
scoreboard players set @s z.avanto.jump 8

scoreboard players set @s z.boxing.potion 8
scoreboard players set @s z.boxing.ball 1

scoreboard players set @s z.wastes.sword 0
scoreboard players set @s z.wastes.bow 1
scoreboard players set @s z.wastes.bomb 2
scoreboard players set @s z.wastes.arrows 10
scoreboard players set @s z.wastes.rabbit 8

function uub:data/player/get_nbt

data modify storage uub:temp Player.Hotbar merge value {manor: {sword: 0, axe: 1, crossbow: 2, bow: 3, potion: 8, shield: -1, arrows: 10}, woodlands: {sword: 0, bow: 1, gapple: 8, arrows: 10}, dungeon: {axe: 0, stealth_pot: 7, frenzy_pot: 8, harm_pot: 6, shield: -1}, abyss: {sword: 0, bow: 1, ingot: 7, arrows: 10, potion: 2, fishing_rod: 2}, citadel: {sword: 0, axe: 1, crossbow: 2, arrows: 10, shield: -1, pearls: 8}, reflection: {sword: 0, crossbow: 1, rocket: -1, pearls: 8}, dracula: {sword: 0, crossbow: 1, arrows: 10, weak_pot: 8, harm_pot: 7}, avanto: {sword: 0, bow: 1, arrows: 10, potion: 8}, boxing: {potion: 8, powerball: 1}, wasteland: {sword: 0, crossbow: 1, bomb: 2, arrows: 10, meat: 8}, townsquare: {sword: 0, axe: 1, shield: -1, bow: 2}}

function uub:data/player/save_nbt
