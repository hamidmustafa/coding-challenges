import Foundation

/// Two sum brute force algo.
/// Time complexity O(n^2)
public class TwoSumBruteForce {
    public static let shared = TwoSumBruteForce()
    
    public init() {}
    
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
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
