setblock ~ ~ ~ air
summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:brewing_stand", Properties: {has_bottle_1: "true"}}, DropItem: false, Glowing: true, NoGravity: true, Time: -999999, Tags: ["fake_potion"]}

scoreboard players set .map event 300
