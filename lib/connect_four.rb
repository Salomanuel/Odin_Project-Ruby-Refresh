class Connect4
	attr_accessor :board
	def initialize
		@board = Hash[(0..6).map{ |x| [x, [".", ".", ".", ".", ".", "."]] }]
	end

	def check_the_coord(coord)
		coord.between?(0,6) ? true : false
	end

	def check_if_free(coord, player)
		horizontal_idx = @board[coord].index(".")
		if horizontal_idx
			@board[coord][horizontal_idx] = player
		else
			return false
		end
		return true
	end

	def visual
		vertical = @board.values
		horizontals =  vertical[0].zip(vertical[1], vertical[2],
																	 vertical[3], vertical[4],
																	 vertical[5], vertical[6]).reverse
		string_to_visualize = horizontals.map { |arr| arr.join("  ") }.join("\n")
	end



end