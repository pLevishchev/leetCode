class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.reduce(0, { max($0, $1.reduce(0, +)) })
    }   
}