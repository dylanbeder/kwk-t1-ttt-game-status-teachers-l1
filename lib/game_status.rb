# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    win1=win[0]
    win2=win[1]
    win3=win[2]
    pos1=board[win1]
    pos2=board[win2]
    pos3=board[win3]
    if pos1=="X" && pos2=="X" && pos3=="X"
      arx=[win1,win2,win3]
      return arx
    elsif pos1=="O" && pos2=="O" && pos3=="O"
      aro=[win1,win2,win3]
      return aro
    end
  end
  return false
end

def full?(board)
  count=0
  i=0
  while i<10
    if position_taken?(board,i)==true
      count+=1
    end
  end
  if count==9
    return true
  else 
    return false
  end
end

def draw?(board)
  if won?(board)==false && full?(board)==true
    return true
  else
    return false
  end
end
    
def over?(board)
  if full?(board) == true || won?(board)==true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == arx
    return "X"
  elsif won?(board) == aro
    return "aro"
  else
    return nil
  end
end

