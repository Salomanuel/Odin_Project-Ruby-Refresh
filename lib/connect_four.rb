class Connect4
	attr_accessor :board
	def initialize
		@board = Hash[(0..6).map{ |x| [x, [".", ".", ".", ".", ".", "."]] }]
	end

	def check_the_coord(coord)
		coord.between?(0,6) ? true : false
	end











	# attr_reader :board
	
	# def initialize
	# 	@board = Board.new
	# end

	# class Board
	# 	attr_reader :grid
	# 	@@grid = [["_","_","_","_","_","_","_"],["_","_","_","_","_","_","_"],
	# 						["_","_","_","_","_","_","_"],["_","_","_","_","_","_","_"],
	# 						["_","_","_","_","_","_","_"],["_","_","_","_","_","_","_"]
	# 					 ]
	# 	def initialize
	# 		@grid = @@grid.dup
	# 	end
	# end

end