function pangrams(s) {
    let str = s.toLowerCase();
    let alphabet = "abcdefghijklmnopqrstuvwxyz".split('');
    for(let i = 0; i < str.length; i++){
        if(alphabet.includes(str[i])){
            alphabet.splice(alphabet.indexOf(str[i]), 1)
        } 
    }
    if(alphabet.length <= 0){
        return 'pangram'
    } else {
        return 'not pangram'
    }
}