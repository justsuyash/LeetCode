class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        new = []
        full = []
        j=0
        for i in range(len(matrix[0])):
            for j in range(len(matrix)):
                new.append(matrix[j][i])
            full.append(new)
            new = []
        return full