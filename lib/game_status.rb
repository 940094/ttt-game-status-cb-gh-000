# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [  # 3 vertical, 3 horizontal, 2 diagnol
  [0, 1 , 2],
  [3, 4 , 5],
  [6, 7 , 8],
  [0, 3 , 6],
  [1, 4 , 7],
  [2, 5 , 8],
  [2, 4 , 6],
  [0, 4 , 8],
]

def won?(board)  # return false if no winning combo; return winning combination index if there is a win
  WIN_COMBINATIONS.each do |win_combinations| # for each winning_combination
     index_0 = win_combinations[0]  # index 0
     index_1 = win_combinations[1]  # index 0
     index_2 = win_combinations[2]  # index 0
     # look at 0, 1, 2 index and if all are X, then there's a win, or if all are O there's a win
     if (index_0 == 'X' && index_1 == 'X' && index_2 == 'X') || (index_0 == 'O' && index_1 == 'O' && index_2 == 'O')
       puts win_combinations
     end
  end
end

board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
won?(board)
