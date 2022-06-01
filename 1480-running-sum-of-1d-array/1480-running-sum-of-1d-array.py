class Solution:
    def runningSum(self, nums):
        return [sum(nums[:i+1]) for i in range(len(nums))]