# Last updated: 20/08/2025, 20:44:11
class Solution(object):
    def rotate(self, nums, k):
#         total = len(nums) 
#         print(total)
#         count = 0
#         j = 0

#         i=0
#         temp1 = nums[0]
#         temp2 = nums[0]
#         while count !=7:
#             temp1 = temp2
#             i = (i + k)%total
#             temp2 = nums[i]
#             nums[i] = temp1
#             count = count + 1

#         print(nums)


        k = k%len(nums)
        l,r = 0,len(nums)-1
       
        while l<r:
            nums[l],nums[r] = nums[r],nums[l]
            l,r = l + 1 , r - 1
            
            
        l,r = 0,k-1
       
        while l<r:
            nums[l],nums[r] = nums[r],nums[l]
            l,r = l + 1 , r - 1
            
        l,r = k,len(nums)-1
        print(l,r)
        while l<r:
            nums[l],nums[r] = nums[r],nums[l]
            l,r = l + 1 , r - 1
        print(nums)
        
        
        """
        :type nums: List[int]
        :type k: int
        :rtype: None Do not return anything, modify nums in-place instead.
        """
        
        