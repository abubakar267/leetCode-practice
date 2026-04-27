class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        int maxLength = 0;
        unordered_set<char> s1;
        int index = 0;
        int left = 0;

        while(index < s.length()){

            // remove duplicates first
            while(s1.find(s[index]) != s1.end()){
                s1.erase(s[left]);
                left++;
            }

            // then insert
            s1.insert(s[index]);

            // window size
            int windSize = index - left + 1;

            maxLength = max(maxLength, windSize);

            index++;
        }

        return maxLength;
    }
};