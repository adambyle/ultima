setblock ~ ~ ~ air
summon falling_block ~ ~ ~ {Glowing: true, BlockState: {Name: "minecraft:brewing_stand", Properties: {has_bottle_1: "true"}}, NoGravity: true, DropItem: false, Time: -999999}

scoreboard players set .map event 200
