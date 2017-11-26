# stuff to implement:
	# skull
	# input parser (letter and number = row and column)

module Board
	def create_board
		@board = []
		3.times {	@board << [".",".","."] }
	end

	def show_board
		puts "  A  B  C"
		@board.each_with_index { |row, i| puts "#{i} #{row.join("  ")}" }
	end

	def check_move(move)
	end


end

module Game
	def welcome
		puts
		puts "Welcome to TicTacToe OF DEATH"
		puts
	end

	def ask_input
		puts
		puts "It's your turn, make a move"
		@player_move = gets.chomp
		return @player_move
	end

	def new_turn
		show_board
		ask_input
	end
end

class TicTacToe
	include Board
	include Game

	def initialize
		create_board
		welcome
		new_turn
	end

end





TicTacToe.new