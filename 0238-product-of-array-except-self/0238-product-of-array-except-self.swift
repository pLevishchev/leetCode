class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var leftProducts = [Int](repeating: 1, count: n)
        var rightProducts = [Int](repeating: 1, count: n)
        var result = [Int](repeating: 1, count: n)

        var leftProduct = 1
        for i in 0..<n {
            leftProducts[i] = leftProduct
            leftProduct *= nums[i]
        }

        var rightProduct = 1
        for i in (0..<n).reversed() {
            rightProducts[i] = rightProduct
            rightProduct *= nums[i]
        }

        for i in 0..<n {
            result[i] = leftProducts[i] * rightProducts[i]
        }

        return result 
    }
}