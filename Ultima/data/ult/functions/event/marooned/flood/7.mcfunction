fill 131 19 186 95 19 124 water replace air
fill 131 19 186 95 19 124 spruce_fence[waterlogged=true] replace spruce_fence[waterlogged=false]
fill 131 19 186 95 19 124 ladder[waterlogged=true] replace ladder[waterlogged=false]
fill 131 19 186 95 19 124 chain[waterlogged=true] replace chain[waterlogged=false]
fill 131 19 186 95 19 124 oak_slab[waterlogged=true, type=bottom] replace oak_slab[waterlogged=false, type=bottom]
fill 131 19 186 95 19 124 oak_slab[waterlogged=true, type=top] replace oak_slab[waterlogged=false, type=top]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=bottom, facing=east] replace oak_stairs[waterlogged=false, half=bottom, facing=east]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=bottom, facing=west] replace oak_stairs[waterlogged=false, half=bottom, facing=west]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=bottom, facing=north] replace oak_stairs[waterlogged=false, half=bottom, facing=north]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=bottom, facing=south] replace oak_stairs[waterlogged=false, half=bottom, facing=south]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=top, facing=east] replace oak_stairs[waterlogged=false, half=top, facing=east]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=top, facing=west] replace oak_stairs[waterlogged=false, half=top, facing=west]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=top, facing=north] replace oak_stairs[waterlogged=false, half=top, facing=north]
fill 131 19 186 95 19 124 oak_stairs[waterlogged=true, half=top, facing=south] replace oak_stairs[waterlogged=false, half=top, facing=south]
fill 131 19 186 95 19 124 spruce_slab[waterlogged=true, type=bottom] replace spruce_slab[waterlogged=false, type=bottom]
fill 131 19 186 95 19 124 spruce_slab[waterlogged=true, type=top] replace spruce_slab[waterlogged=false, type=top]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=bottom, facing=east] replace spruce_stairs[waterlogged=false, half=bottom, facing=east]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=bottom, facing=west] replace spruce_stairs[waterlogged=false, half=bottom, facing=west]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=bottom, facing=north] replace spruce_stairs[waterlogged=false, half=bottom, facing=north]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=bottom, facing=south] replace spruce_stairs[waterlogged=false, half=bottom, facing=south]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=top, facing=east] replace spruce_stairs[waterlogged=false, half=top, facing=east]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=top, facing=west] replace spruce_stairs[waterlogged=false, half=top, facing=west]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=top, facing=north] replace spruce_stairs[waterlogged=false, half=top, facing=north]
fill 131 19 186 95 19 124 spruce_stairs[waterlogged=true, half=top, facing=south] replace spruce_stairs[waterlogged=false, half=top, facing=south]
fill 131 19 186 95 19 124 birch_fence[waterlogged=true] replace birch_fence[waterlogged=false]
fill 131 19 186 95 19 124 end_stone_brick_wall[waterlogged=true] replace end_stone_brick_wall[waterlogged=false]
scoreboard players set #transition event 0
scoreboard players add #map event 1

execute if predicate ult:coin_flip run summon salmon 104 18 134
execute if predicate ult:coin_flip run summon salmon 109 18 130
execute if predicate ult:coin_flip run summon salmon 117 18 130
execute if predicate ult:coin_flip run summon salmon 122 18 134
