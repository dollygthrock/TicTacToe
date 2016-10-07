require_relative "Tic_Tac_Board.rb"

class Unbeatable
	attr_accessor :marker, :move, :board

	def initialize(marker)
		@marker = marker
		@move = -1
	end

	def get_move(board)
		@board = board.index(" ")
	end

	def winning_lines(board)
	[[board[0], board[1], board[2]],
	[board[3], board[4], board[5]],
	[board[6], board[7], board[8]],
	[board[0], board[3], board[6]],
	[board[1], board[4], board[7]],
	[board[2], board[5], board[8]],
	[board[0], board[4], board[8]],
	[board[2], board[4], board[6]]]
	end 

winning_position = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]                    
open_spot = 10
 
	
	
# def get_move(board_array)
# 		if play_win(board_array) == false #until play_win(board_array) same?
# 			opponent = opponent_marker
# 				if potential_block = board_array.detect{|opponent|winning_lines.count(opponent) == 2}
# 				@move = potential_block(board_array[])#make move at the empty space where 2 opponents 
# 					#are in a winning line; what goes in to the board array? not sure how to pick the 
# 					#empty space??
# 				elsif create_a_block = board_array.find{|opponent|}
# 				end
# 		end 
# 	end 		 


		# if board_array[0]== @marker && board_array[3] == @marker 
		# 	6
		# elsif board_array[0] == @marker && board_array[4] == @marker
		# 	8
	
		# 	available_spaces = get_available_spaces(board_array)
		# 	if available_spaces[4].empty?
		# 	@move = available_spaces[4]
		# 	end
		 
		# @move - 1
	

	def try_sides
		[1,3,5,7].each do|index|
			return @board[index] = "O" if @board[index].is_a? #@board set as global variable?
			end
	end

	def try_corners
		[0,2,6,8].each do|index|
			return @board[index] = "O" if @board[index].is_a? #@board set as global variable?
			end
	end  



	def play_win(game_board)
		opponent = opponent_marker
		play = false
		potential_wins = winning_lines(game_board)
 		potential_wins.each do |potential_win|
	 		if potential_win.count(@marker) == 2 && potential_win.count(opponent) == 0
	 			potential_win.each do |space|
	 				if space != @marker
	 					@move = space
	 					play = true
	 				end
	 			end
	 		end
	 	end
	 	play
	end

	def opponent_marker
		@marker == "X" ? "O" : "X"
	end 

end 
 
