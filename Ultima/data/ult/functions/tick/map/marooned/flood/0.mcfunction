fill 131 12 186 95 12 124 water replace air
fill 131 12 186 95 12 124 spruce_fence[waterlogged=true] replace spruce_fence[waterlogged=false]
fill 131 12 186 95 12 124 ladder[waterlogged=true] replace ladder[waterlogged=false]
fill 131 12 186 95 12 124 chain[waterlogged=true] replace chain[waterlogged=false]
fill 131 12 186 95 12 124 oak_slab[type=bottom, waterlogged=true] replace oak_slab[type=bottom, waterlogged=false]
fill 131 12 186 95 12 124 oak_slab[type=top, waterlogged=true] replace oak_slab[type=top, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=east, half=bottom, waterlogged=true] replace oak_stairs[facing=east, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=west, half=bottom, waterlogged=true] replace oak_stairs[facing=west, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=north, half=bottom, waterlogged=true] replace oak_stairs[facing=north, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=south, half=bottom, waterlogged=true] replace oak_stairs[facing=south, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=east, half=top, waterlogged=true] replace oak_stairs[facing=east, half=top, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=west, half=top, waterlogged=true] replace oak_stairs[facing=west, half=top, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=north, half=top, waterlogged=true] replace oak_stairs[facing=north, half=top, waterlogged=false]
fill 131 12 186 95 12 124 oak_stairs[facing=south, half=top, waterlogged=true] replace oak_stairs[facing=south, half=top, waterlogged=false]
fill 131 12 186 95 12 124 spruce_slab[type=bottom, waterlogged=true] replace spruce_slab[type=bottom, waterlogged=false]
fill 131 12 186 95 12 124 spruce_slab[type=top, waterlogged=true] replace spruce_slab[type=top, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=east, half=bottom, waterlogged=true] replace spruce_stairs[facing=east, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=west, half=bottom, waterlogged=true] replace spruce_stairs[facing=west, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=north, half=bottom, waterlogged=true] replace spruce_stairs[facing=north, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=south, half=bottom, waterlogged=true] replace spruce_stairs[facing=south, half=bottom, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=east, half=top, waterlogged=true] replace spruce_stairs[facing=east, half=top, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=west, half=top, waterlogged=true] replace spruce_stairs[facing=west, half=top, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=north, half=top, waterlogged=true] replace spruce_stairs[facing=north, half=top, waterlogged=false]
fill 131 12 186 95 12 124 spruce_stairs[facing=south, half=top, waterlogged=true] replace spruce_stairs[facing=south, half=top, waterlogged=false]
fill 131 12 186 95 12 124 birch_fence[waterlogged=true] replace birch_fence[waterlogged=false]
fill 131 12 186 95 12 124 end_stone_brick_wall[waterlogged=true] replace end_stone_brick_wall[waterlogged=false]
execute as @a[tag=watching] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 16 0.8
scoreboard players set .transition event 1
