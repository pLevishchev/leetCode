class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()

        for element in nums {
            dict[element, default: 0] += 1
        }
        
        let sortedUniqueElements = Array(dict.keys).sorted { dict[$0]! > dict[$1]! }
        
        return Array(sortedUniqueElements.prefix(k))
    }
}