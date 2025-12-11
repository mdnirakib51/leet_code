class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<Set<String>> rows = List.generate(9, (_)=> <String>{});
    List<Set<String>> cols = List.generate(9, (_)=> <String>{});
    List<Set<String>> boxes = List.generate(9, (_)=> <String>{});

    for(int r = 0; r < 9; r++){
      for(int c = 0; c < 9; c++){
        String value = board[r][c];

        if(value == '.') continue;

        int boxIndex = (r ~/ 3) * 3 + (c ~/ 3);
        if(rows[r].contains(value)){
          return false;
        }

        if(cols[c].contains(value)){
          return false;
        }

        if(boxes[boxIndex].contains(value)){
          return false;
        }

        rows[r].add(value);
        cols[c].add(value);
        boxes[boxIndex].add(value);
      }
    }

    return true;
  }
}
void main(){
  final s = Solution();

  print(s.isValidSudoku([["5","3",".",".","7",".",".",".","."]
                        ,["6",".",".","1","9","5",".",".","."]
                        ,[".","9","8",".",".",".",".","6","."]
                        ,["8",".",".",".","6",".",".",".","3"]
                        ,["4",".",".","8",".","3",".",".","1"]
                        ,["7",".",".",".","2",".",".",".","6"]
                        ,[".","6",".",".",".",".","2","8","."]
                        ,[".",".",".","4","1","9",".",".","5"]
                        ,[".",".",".",".","8",".",".","7","9"]]));

  print(s.isValidSudoku([["8","3",".",".","7",".",".",".","."]
                        ,["6",".",".","1","9","5",".",".","."]
                        ,[".","9","8",".",".",".",".","6","."]
                        ,["8",".",".",".","6",".",".",".","3"]
                        ,["4",".",".","8",".","3",".",".","1"]
                        ,["7",".",".",".","2",".",".",".","6"]
                        ,[".","6",".",".",".",".","2","8","."]
                        ,[".",".",".","4","1","9",".",".","5"]
                        ,[".",".",".",".","8",".",".","7","9"]]));
                        }