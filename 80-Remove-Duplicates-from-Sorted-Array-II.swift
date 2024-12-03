class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        
        while i < nums.count {
            guard i > 1, 
                    nums[i - 2] == nums[i]
            else {
                i += 1
                continue
            }
            
            nums.remove(at: i)
        }
        
        return nums.count
    }
}