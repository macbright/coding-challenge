def count_bits(num)
    arr = [0]
    count = 0 
    for i in 1..num do 
        a = i.to_s(2)
        for j in 0...a.length
            if a[j] == '1'
                count += 1 
            end
        end
        arr << count
        count = 0
    end
    arr
end

# SECOND SOLUTION
# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    if num == 0
      return [0]
    end
    arr = [0] 
    for i in 1..num do
      count = 0
      n = i
      while(n>0) do
        count += n & 1
        n >>= 1
        # count += 1 if n % 2 != 0
        # n /= 2
      end
      arr << count
    end

    arr
end
# 0(n^2)
# 0(n)

# 5
# 0 1, 2
# 0 -> 0
# 1 -> 0 1
# 2 -> 1 0
# 3 -> 1 1 
# 4 -> 1 0 0
# 5 -> 1 0 1

# [0, 1, 1, 2, 1, 2]


