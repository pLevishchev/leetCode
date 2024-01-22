class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let uniqueSet = Set(nums)
        
        return uniqueSet.count != nums.count
    }
}