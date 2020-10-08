function maxSubstring(s) {
    // s = 'baba';
    // Write your code here
    let arr = [];
    for(let i = 0; i < s.length; i++){
        let newS = '';
        for(let j = i; j <s.length; j++){
            newS += s[j]
            if(!arr.includes(newS)){
                 arr.push(newS)
            }
        }
    }
    let newArr = arr.sort()
    console.log(newArr)
    return newArr[newArr.length - 1]
}