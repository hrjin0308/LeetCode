class Solution {
  func isValid(_ s: String) -> Bool {
    guard s.count > 0 else { return true }
    
    var array: [Character] = []
    let dict: [Character : Character] = [
      "(" : ")",
      "[" : "]",
      "{" : "}"
    ]
    let keys = Array(dict.keys)
    
    for char in s {
      if keys.contains(char) {
        array.append(char)
      } else {
        guard
          let last = array.last,
          char == dict[last]
        else {
          return false
        }
        
        array.removeLast()
      }
    }
    
    return array.isEmpty
  }
}