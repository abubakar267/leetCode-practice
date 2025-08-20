# Last updated: 20/08/2025, 20:44:09
class Solution(object):
    def twoSum(self, nums, target):
        for ind1,i in enumerate(nums):
            sum = 0
            for ind2,j in enumerate((nums)):
                if(ind1 != ind2):
                    if i + j == target:
                        print(ind1,ind2)
                        return [ind1,ind2]
                


            
        