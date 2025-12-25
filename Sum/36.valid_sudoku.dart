class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<Set<String>> rows = List.generate(9, (_) => <String>{});
    List<Set<String>> cols = List.generate(9, (_) => <String>{});
    List<Set<String>> boxes = List.generate(9, (_) => <String>{});

    for (int r = 0; r < 9; r++) {
      for (int c = 0; c < 9; c++) {

        String value = board[r][c];

        // কোন cell এখন প্রসেস হচ্ছে
        print("Cell ($r, $c) = $value");

        if (value == ".") {
          print(" → Empty cell, skipping...");
          continue;
        }

        int boxIndex = (r ~/ 3) * 3 + (c ~/ 3);
        print(" → Box Index: $boxIndex");

        // Row check
        if (rows[r].contains(value)) {
          print(" ❌ Duplicate $value found in ROW $r");
          return false;
        }

        // Column check
        if (cols[c].contains(value)) {
          print(" ❌ Duplicate $value found in COL $c");
          return false;
        }

        // Box check
        if (boxes[boxIndex].contains(value)) {
          print(" ❌ Duplicate $value found in BOX $boxIndex");
          return false;
        }

        // Add value to sets
        rows[r].add(value);
        cols[c].add(value);
        boxes[boxIndex].add(value);

        print(" ✔ Added $value → Row $r, Col $c, Box $boxIndex");
      }
    }

    print("Sudoku is VALID ✔");
    return true;
  }
}

void main(){


  print(Solution().isValidSudoku([["5","3",".",".","7",".",".",".","."]
                        ,["6",".",".","1","9","5",".",".","."]
                        ,[".","9","8",".",".",".",".","6","."]
                        ,["8",".",".",".","6",".",".",".","3"]
                        ,["4",".",".","8",".","3",".",".","1"]
                        ,["7",".",".",".","2",".",".",".","6"]
                        ,[".","6",".",".",".",".","2","8","."]
                        ,[".",".",".","4","1","9",".",".","5"]
                        ,[".",".",".",".","8",".",".","7","9"]]));

  print(Solution().isValidSudoku([["8","3",".",".","7",".",".",".","."]
                        ,["6",".",".","1","9","5",".",".","."]
                        ,[".","9","8",".",".",".",".","6","."]
                        ,["8",".",".",".","6",".",".",".","3"]
                        ,["4",".",".","8",".","3",".",".","1"]
                        ,["7",".",".",".","2",".",".",".","6"]
                        ,[".","6",".",".",".",".","2","8","."]
                        ,[".",".",".","4","1","9",".",".","5"]
                        ,[".",".",".",".","8",".",".","7","9"]]));
}