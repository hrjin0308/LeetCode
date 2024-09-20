class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:]
        for (i, num) in nums.enumerated() {
            if let otherIndex = dict[target - num] {
                return [i, otherIndex]
            }
            dict[num] = i
        }
        return []
    }
}