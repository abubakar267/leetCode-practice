# Last updated: 19/05/2025, 00:52:03
class Solution(object):
    def removeDuplicates(self, nums):
        l = 1

        for r in range(1,len(nums)):
            if nums[r] != nums[r-1]:
                nums[l] = nums[r]
                l+=1
        return l   
                

        
        
      
        