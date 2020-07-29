// My last approach and more optimized solution
var twoSum = function(nums, target) {
    for(let i = 0; i < nums.length; i++){
        if(nums.length === 2) {
            return [i, i+1]
        }
        let firstAdd =  target - nums[i];
        delete nums[i]
        if(nums.includes(firstAdd)){
            return [i, nums.indexOf(firstAdd)]
        }
        
    }  
};

 
//first approach to the solution using a nested loop
var twoSum = function(nums, target) {
    for(let i = 0; i < nums.length; i++){
        for(let j = 0; j < nums.length; j++){
            if( i === j){
                continue
            } else if( nums[i] + nums[j] === target){
                return [i, j]
            }
        }
    }
    
};


// Given an array of integers, return indices of the two numbers such that they add up to a specific target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// Example:

// Given nums = [2, 7, 11, 15], target = 9,

// Because nums[0] + nums[1] = 2 + 7 = 9,
// return [0, 1].