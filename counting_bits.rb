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