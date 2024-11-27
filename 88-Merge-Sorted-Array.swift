class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = nums1[0 ..< m] + nums2
        nums1.sort()
    }
}