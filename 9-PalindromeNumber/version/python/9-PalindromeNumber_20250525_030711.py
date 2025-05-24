# Last updated: 25/05/2025, 03:07:11
class Solution(object):
    def isPalindrome(self, x):
        if x < 0:
            return False  

        temp = x
        reverse_num = 0
        while temp !=0:
            last_digit = temp%10
            temp = temp // 10
            reverse_num = reverse_num*10 + last_digit

        print(reverse_num)

        if reverse_num == x :
            return True
        else :
            return False



        
        # if x<0 or x!=0 and x%10 == 0:     #should not end with 0     
        #     return False

        # half = 0

        # while half<x:
        #     half = (half*10) + (x%10)
        #     x = x//10

        # return x == half or x == half//10