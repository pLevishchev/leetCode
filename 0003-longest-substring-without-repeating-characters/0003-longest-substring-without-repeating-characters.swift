class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var maxLength = 0
        var left = 0
        var charDict = [Character: Int]()

        for (right, char) in chars.enumerated() {
            if let lastSeen = charDict[char], lastSeen >= left {
                left = lastSeen + 1
            }
            charDict[char] = right
            maxLength = max(maxLength, right - left + 1)
        }

        return maxLength
    }
}