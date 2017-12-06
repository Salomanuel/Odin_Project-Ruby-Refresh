class Connect4

	attr_reader :board

	def initialize
		board_creator
	end

	def board_creator
		@board = []
		row 	 = []
		7.times { row    << "." }
		6.times { @board << row }
	end

	def show_board
		@board.each do |row|
			puts row.join(" ")
		end
		puts (0..6).to_a.join(" ")
	end

	def is_it_free?(line, column)
		return true if @board[line][column] == "."
		return false
	end

	def move(column, line=0)
		@board[5][column] = "x"
	end


end

# Connect4.new.show_board