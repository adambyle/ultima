# Set a max array length, and remove elements that go over that max
    data modify storage ult:temp Array prepend from storage ult:temp Entry
    data remove storage ult:temp Array[501]
