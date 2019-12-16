# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = ["","","","","","","","",""]

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2] 
  ]

def won?(board)

  WIN_COMBINATIONS.each do |win_combo|
  
  win1 = win_combo[0]
  win2 = win_combo[1]
  win3 = win_combo[2]

  
  position1 = board[win1]
  position2 = board[win2]
  position3 = board[win3]

 
      if position1 == position2 && position2 == position3 && position1 != " "
        return win_combo
      end
  end

return FALSE

end




def full?(board)
  board.each do |symbol|
    if symbol == " "
      return FALSE
    end
  end
end


def draw?(board)
  if full?(board) && !won?(board)
    return TRUE
  else
    return FALSE
  end
end


def over?(board)
  if draw?(board) || won?(board)
    return TRUE
  else
    return FALSE
  end
end

def winner(board)
  if won?(board)
    a_winning_combo = won?(board)
    index = a_winning_combo[0]
    return board[index] #this returns the element at the first index of the winning combination
  else
    return nil
  end
end