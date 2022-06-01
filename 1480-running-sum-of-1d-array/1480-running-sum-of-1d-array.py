class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        sum = 0 
        for i, num in enumerate(nums): 
            # first nums[i] is added to sum then we'll update nums[i] value with sum, and return it
            sum += num 
            nums[i] = sum 
        return nums