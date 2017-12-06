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

end