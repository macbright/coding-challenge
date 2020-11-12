def find_even_index(arr)
  for i in 0...arr.length do
    if sum_left_and_right([], i, [], arr)
      return i
    end
  end
  -1
end

def sum_left_and_right(left_arr, pivot, right_arr, arr)
  if pivot == 0 
    left_arr = []
    right_arr = arr[pivot+1...arr.length]
  else 
    left_arr = arr[0...pivot]
    right_arr = arr[pivot+1...arr.length]
  end
  if left_arr.sum == right_arr.sum
    return true
  end
  false
end