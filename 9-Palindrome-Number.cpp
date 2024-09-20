class Solution {
public:
    bool isPalindrome(int x) {
        if (x < 0) { return false; }
        
        if (x == 0) { return true; }
        
        vector<int> vec;
        
        while (x > 0) {
            vec.push_back(x % 10);
            x /= 10;
        }
        
        for (int i = 0; i < (vec.size()/2); i++) {
            int start = vec[i];
            int back = vec[(vec.size() - (i+1))];
            
            if (start != back) {
                return false;
            }
        }
        
        return true;
    }
};