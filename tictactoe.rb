

def print_game_board

	puts """
	Game Board
	1 | 2 | 3
	---------
	4 | 5 | 6
	---------
	7 | 8 | 9
	"""
end

puts "Would you like to play a game of tic tac toe?"
answer_play_game=gets.chomp

if answer_play_game.upcase == "YES" 
	print_game_board

	puts "Would you like to be X or O?"
	answer_choose_player=gets.chomp

if answer_choose_player.upcase == "X"
	puts "Player 1 has chosen X."
	puts "Player 2 is O"

elsif  answer_choose_player.upcase =="O"
	puts "Player 1 has chosen O"
	puts "Player 2 is X"

else
	puts "End Game: invalid character"
	exit

end

else 
	puts "End Game"
	exit

end
