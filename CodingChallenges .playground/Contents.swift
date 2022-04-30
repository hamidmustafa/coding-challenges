import UIKit
import Foundation

var numbers: [Int] = [2, 7, 11, 15]
var targetValue: Int = 9
let twoSumInstance = TwoSum()
var finalResult: [Int] = twoSumInstance.twoSum(nums: numbers, target: targetValue)
print(finalResult)

