require_relative "tic_tac_toe_aaron.rb"

board_array = [1,2,3,4,5,6,7,8,9]

ask_to_play_game

player_one = player_one_marker()

player_two = player_two_marker(player_one)
puts "Player 2 is #{player_two}."

print_game_board(board_array)

player_one_move = player_one_first_move
board_array[player_one_move-1] =  player_one

print_game_board(board_array)

player_two_move = player_two_first_move
board_array[player_two_move-1] = player_two

print_game_board(board_array)

#player one first move must convert to player one marker
#player one marker must go to board array in player one
#first move's position


player1_second_move = player_one_second_move
board_array[player1_second_move-1] = player_one

print_game_board(board_array)

player2_second_move = player_two_second_move
board_array[player2_second_move-1] = player_two

print_game_board(board_array)

player1_third_move = player_one_third_move
board_array[player1_third_move-1] = player_one

print_game_board(board_array)

player2_third_move = player_two_third_move
board_array[player2_third_move-1] = player_two

print_game_board(board_array)

player1_fourth_move = player_one_fourth_move
board_array[player1_fourth_move-1] = player_one

print_game_board(board_array)

player2_fourth_move = player_two_fourth_move
board_array[player2_fourth_move-1] = player_two

print_game_board(board_array)

player1_last_move = player_one_last_move
board_array[player1_last_move-1] = player_one

print_game_board(board_array)

winner

















