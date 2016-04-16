require_relative "Tic_Tac_Board.rb"

class Sequential
	
def get_move(board_array)
	available_spaces = get_available_spaces(board_array)
	available_spaces.first 
end 

end


