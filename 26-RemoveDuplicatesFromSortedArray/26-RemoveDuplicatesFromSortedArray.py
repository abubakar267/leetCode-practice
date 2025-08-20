# Last updated: 20/08/2025, 20:44:14
class Solution(object):
    def removeDuplicates(self, nums):
        l = 1

        for r in range(1,len(nums)):
            if nums[r] != nums[r-1]:
                nums[l] = nums[r]
                l+=1
        return l   
                

        
        
      
        