import Foundation

// Solution 1, complexity will be O(n^2). This is not an ideal solution, we need something with complexlity as O(n)
class TwoSum {
    func twoSum(nums: [Int], target: Int) -> [Int] {
        var result: Int = 0
        for i in 0...nums.count-1 {
            for j in 1...nums.count-1 {
                result = nums[i] + nums[j]
                if result == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

