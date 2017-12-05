class Game
	attr_reader :board
	
	def initialize
		@board = Board.new
	end

	class Board
		attr_reader :grid
		@@grid = [["_","_","_","_","_","_","_"],["_","_","_","_","_","_","_"],
							["_","_","_","_","_","_","_"],["_","_","_","_","_","_","_"],
							["_","_","_","_","_","_","_"],["_","_","_","_","_","_","_"]
						 ]
		def initialize
			@grid = @@grid.dup
		end
	end

end