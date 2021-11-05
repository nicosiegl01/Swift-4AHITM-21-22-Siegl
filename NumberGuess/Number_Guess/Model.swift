class Model {
    var numberToGuess = 0
    var countOfTries = 0
    
    func compare(guess guessedNumber:Int!) -> Int! {
        
        var result = 0
        
        if guessedNumber < numberToGuess {
            result = -1
        }
        else if guessedNumber > numberToGuess {
            result = 1
        }
        
        return result
    }
    
    func compare(guess guessedString:String!) -> Int! {
        
        return compare(guess: Int(guessedString))
    }
    
    func isValid(guess guessedString:String?) -> Bool {
        var result = false
        if let str = guessedString{
            if let number = Int(str){
                if(number > 0 && number < 100){
                    result = true
                }
            }
        }
        return result
    }
    
}
