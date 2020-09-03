# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [0, 4, 8]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if position_taken?(board, combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
      return combo
    end
  end
  false
end

def full?(board)
  board.all? do |spot|
    spot == "X" || spot =="O"
  end
end  

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
  win = won?(board)
  win_index1 = win[0]
  win_index2 = win[1]
  win_index3 = win[2]
  if board[win_index1] == "X"
    return "X"
  elsif
    return "O"
  else
    return nil
  end
end