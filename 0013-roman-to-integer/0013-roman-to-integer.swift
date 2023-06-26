class Solution {
func romanToInt(_ s: String) -> Int {
    let romanValues: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000
    ]
    
    var total = 0
    var previousValue = 0
    
    for char in s {
        if let value = romanValues[char] {
            if value > previousValue {
                total += value - 2 * previousValue
            } else {
                total += value
            }
            previousValue = value
        }
    }
    
    return total
    }
}