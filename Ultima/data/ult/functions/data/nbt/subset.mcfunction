# Compare one nbt object to another, to test if any merge is possible
    execute store success score .merge var run data modify storage ult:temp Object merge from storage ult:temp Merge
    # If .merge is 1, then a merge was performed and they do not match
    execute store success score .subset control if score .merge var matches 0
