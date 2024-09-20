class Solution {
  func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 1 else { return strs.first ?? "" }
    
    var prefix = strs.first!
    
    while prefix.count > 0 {
      if strs.filter({ $0.hasPrefix(prefix) }).count == strs.count {
        break
      }
      prefix.removeLast()
    }
    
    return prefix
  }
}