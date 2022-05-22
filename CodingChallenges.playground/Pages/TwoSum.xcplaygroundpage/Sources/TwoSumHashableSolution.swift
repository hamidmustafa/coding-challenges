import Foundation

// Let's write an efficient solution with low complexity.
// test case [2,7,11,15] target: 18

extension Dictionary where Key == Int, Value: Equatable {
    func intKey(value: Value) -> Key? {
        return compactMap { value == $1 ? $0 : nil }.first
    }
}

public class TwoSumHashableSolution {
    public static let shared = TwoSumHashableSolution()
    
    public init() {}
    
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary: [Int: Int] = [:]
        for i in 0...nums.count-1 {
            let currentValue = nums[i]
            let x = target - currentValue
            // if "x" key does not exist in the dictionary that's mean x does not exist in nums array as well.
            if let key = dictionary.intKey(value: x) {
                if dictionary.keys.contains(key) {
                    let indexOfX = nums.firstIndex(of: x) ?? 0
                    return [indexOfX, i]
                }
            }
            dictionary[i] = currentValue
        }
        return []
    }
}
