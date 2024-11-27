class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let tmpNums1 = nums1[0 ..< m]
        var i = 0
        var j = 0
        
        while i < m || j < n {
            let index = i + j
            guard i < m else {
                nums1[index] = nums2[j]
                j += 1
                continue
            }
            
            guard j < n else {
                nums1[index] = tmpNums1[i]
                i += 1
                continue
            }
            
            if tmpNums1[i] > nums2[j] {
                nums1[index] = nums2[j]
                j += 1
            } else {
                nums1[index] = tmpNums1[i]
                i += 1
            }
        }
    }
}