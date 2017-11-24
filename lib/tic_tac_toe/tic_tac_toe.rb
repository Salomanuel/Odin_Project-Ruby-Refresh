class TicTacToe
	def initialize
		create_board
		show_board
	end

	def create_board
		@board = []
		3.times {	@board << [".",".","."] }
	end

	def show_board
		puts "  1  2  3"
		@board.each_with_index { |row, i| puts "#{i} #{row.join("  ")}" }
	end


end



TicTacToe.new