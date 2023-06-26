class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var counts: [Int: Int] = [:]
            for num in nums {
                if let count = counts[num] {
                    counts[num] = count + 1
                } else {
                    counts[num] = 1
                }
            }   
    var majorityElement: Int? = nil
    var majorityCount = 0
    for (num, count) in counts {
        if count > majorityCount {
            majorityElement = num
            majorityCount = count
        }
    }
    return majorityElement ?? 0
    }
}