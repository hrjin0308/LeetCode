class Solution {
    func romanToInt(_ s: String) -> Int {
        let symbolDict: [String.Element : Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        var result = 0
        var preValue = 0
    
        for symbol in s {
            let value = symbolDict[symbol]!
            if preValue < value {
                result += value - (2*preValue)
            } else {
                result += value
            }
            preValue = value
        }
    
        return result
    }
}