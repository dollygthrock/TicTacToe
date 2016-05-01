require_relative "AI_TicTacToe_Game.rb"
require_relative "human_ttt_game.rb"

def ask_to_play_game
    puts "Would you like to play an easy (enter E) or less easy (enter LE) game of tic-tac-toe?"
    answer = gets.chomp

    if answer.upcase == "E" 
    	player_1 = {:player_mode => Human.new, :marker => "X"}
    	player_2 = {:player_mode => Sequential.new,:marker => "O"}
    elsif answer.upcase == "LE"
        player_1 = {:player_mode => Human.new, :marker => "X"} 
        player_2 = {:player_mode => Simple.new, :marker => "O"}   
    end
    
game_board = create_new_board
play_game(player_1,player_2,game_board)
final_board = play_game(player_1,player_2,game_board)
end 
final_board = ask_to_play_game

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
 print_game_board(final_board)

# player_1 = {:player_mode => Human.new, :marker => "X"}
# player_2 = {:player_mode => Sequential.new, :marker => "O"}
# game_board = create_new_board
# final_board = play_game(player_1,player_2,game_board)
# print_game_board(game_board)