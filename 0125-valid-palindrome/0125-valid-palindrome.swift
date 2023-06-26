class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let alphanumericCharacters = s
            .components(separatedBy: CharacterSet.alphanumerics.inverted)
            .filter { !$0.isEmpty }
        let puredString = alphanumericCharacters.joined().lowercased()
        let reversedString = String(puredString.reversed())
        return puredString == reversedString
    }
}