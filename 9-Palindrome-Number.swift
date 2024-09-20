class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        return String(x).reversed().elementsEqual(String(x))
    }
}