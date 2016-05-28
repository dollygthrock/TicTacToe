require_relative "Tic_Tac_Board.rb"

class Human
	
def get_move(board_array)
    #print_game_board(board_array)
	availabe_spaces = get_available_spaces(board_array)
	#puts "Choose an available space from the board."
	#answer = gets.chomp
	answer.to_i
        if move == board_array{move-1}
            move = answer.to_i
        else
            puts "Invalid Choice"

        end 
end 
get_move(board_array)

def print_game_board(array)
     puts """
        Game Board
        #{array[0]} | #{array[1]} | #{array[2]}
        ---------
        #{array[3]} | #{array[4]} | #{array[5]}
        ----------
        #{array[6]} | #{array[7]} | #{array[8]}
        """
  end
  print_game_board(array)

end


