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
  WIN_COMBINATIONS.each do |winning_combination| # for each winning_combination
     winning_combination.all? do |index|  # if all X's (or all O's) return the winning index
       board[index]
     end
  end
end

board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
puts won?(board)
