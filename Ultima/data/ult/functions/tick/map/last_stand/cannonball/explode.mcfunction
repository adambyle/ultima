# Explode proximal cannonballs
    function ult:data/root
    tag @s add exploded
    execute as @e[type=fireball, tag=!exploded, distance=..5] at @s unless entity @e[tag=text_display, distance=..20] run function ult:tick/map/last_stand/cannonball/explode

# Spec fx
    particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force

# Destroy map
    fill ~-2 ~-3 ~-2 ~2 ~3 ~2 air replace #ult:last_stand
    fill ~-3 ~-2 ~-2 ~3 ~2 ~2 air replace #ult:last_stand
    fill ~-2 ~-2 ~-3 ~2 ~2 ~3 air replace #ult:last_stand

# Explode with debris
    # Gray blocks
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.3d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [-.1d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.0d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.1d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_stone_bricks"}, Motion: [+.3d, +.6d, +.3d], Time: 1}
    # Red blocks
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.0d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.0d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.0d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.0d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.0d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.3d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.3d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.3d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.3d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.3d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.3d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [-.1d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.0d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.1d, +.6d, +.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.6d, -.3d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.6d, -.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.6d, +.0d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.6d, +.1d], Time: 1}
    execute if predicate ult:maps/last_stand/explosion_debris run summon falling_block ~ ~ ~ {BlockState: {Name: "minecraft:cracked_nether_bricks"}, Motion: [+.3d, +.6d, +.3d], Time: 1}

# Handle accidental destruction of the walls of the Abyss map
    fill 60 35 96 60 24 126 cobblestone replace air

kill @s
