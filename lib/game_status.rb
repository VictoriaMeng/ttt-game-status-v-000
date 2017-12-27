# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
]

def won?(board)
  WIN_COMBINATIONS.find do |combo|
    row = combo.map { |index| board[index] }
    row.count("X") == 3 || row.count("O") == 3
  end
end

def full?(board)
  board.none? { |index| index == " " }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  return nil if draw?(board)
  combo = won?(board)
  board[index]
end
