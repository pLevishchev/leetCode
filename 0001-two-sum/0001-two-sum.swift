class Solution {
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for (index, element) in nums.enumerated() {
        let tmp = target - element
        if dict[tmp] != nil {
            return [dict[tmp]!, index]
        } else {
            dict[element] = index
        }
    }
    return []
    }
}