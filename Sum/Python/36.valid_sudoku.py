
class Solution:
    def isValidSudoku(self, board):
        rows = [set() for _ in range(9)]
        cols = [set() for _ in range(9)]
        boxes = [set() for _ in range(9)]

        for r in range(3):
            for c in range(3):
                val = board[r][c]
                
                print(f"\nChecking cell ({r}, {c}) = {val}")

                if val == ".":
                    continue

                boxIndex = (r // 3) * 3 + (c // 3)

                if val in rows[r]:
                    return False
                else:
                    rows[r].add(val)


                if val in cols[c]:
                    return False
                else:
                    cols[c].add(val)

                if val in boxes[boxIndex]:
                    return False
                else:
                    boxes[boxIndex].add(val)

        return True

print(Solution().isValidSudoku([
    ["5","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]))

print(Solution().isValidSudoku([
     ["8","3",".",".","7",".",".",".","."]
    ,["6",".",".","1","9","5",".",".","."]
    ,[".","9","8",".",".",".",".","6","."]
    ,["8",".",".",".","6",".",".",".","3"]
    ,["4",".",".","8",".","3",".",".","1"]
    ,["7",".",".",".","2",".",".",".","6"]
    ,[".","6",".",".",".",".","2","8","."]
    ,[".",".",".","4","1","9",".",".","5"]
    ,[".",".",".",".","8",".",".","7","9"]
]))
