class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        var i = 0
        
        while i < (nums.count - count) {
            if nums[i] == val {
                nums.swapAt(i, (nums.count - count - 1))
                count += 1
            } else {
                i += 1
            }
        }
        
        return nums.count - count
    }
}