# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    ways =  Array.new(n, 1)
    i = 1
    while i < ways.length    do 
        ways[i] = ways[i-1] + ways[i-2]
        i += 1
    end
    ways.last
end