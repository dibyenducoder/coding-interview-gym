import Foundation
class Solution {
    func maximumSwap(_ num: Int) -> Int {
        var digits: [Int] = String(num).compactMap{ $0.wholeNumberValue }
        print("Digits: \(digits)")
        let sortedDigits: [Int] = digits.sorted {$0 > $1}
        print("Sorted: \(sortedDigits)")
        var numIdxMap = [Int:Int]()
        for (idx, item) in digits.enumerated() {
            numIdxMap[item] = idx
        }
        var swapIdx = 0
        while swapIdx < digits.count {
            if digits[swapIdx] != sortedDigits[swapIdx] {
                let targetIdx = numIdxMap[sortedDigits[swapIdx]]!
                print("targetIdx: \(targetIdx), swapIdx: \(targetIdx)")
                digits.swapAt(targetIdx, targetIdx)
//                (digits[swapIdx], digits[swapIdx]) = (digits[targetIdx], digits[swapIdx])
                break
            }
        }
        print("Digits: \(digits)")
        return Int(digits.reduce("") { $0 + String($1) }) ?? num
    }
}

/*
 
 12345678
 */
