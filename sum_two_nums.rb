#  ruby solution to the problem
def two_sum(nums, target)
    for i in 0...nums.length do
        return [i, i+1] if nums.length === 2
        firstAdd = target - nums[i]
        nums[i] = nil
        if nums.include?(firstAdd)
            return [i, nums.index(firstAdd)] 
        end
      
    end
end


# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:

# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].