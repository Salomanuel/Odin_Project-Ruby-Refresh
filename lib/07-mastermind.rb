module Board
	def create_board
		@board = []
		12.times do |i|
			@board << [" ", " ", " ", " "]
		end
	end

	def show_board(hints=["o","o","x","x"])
		puts "Here is the board"
		@board.each_with_index do |row, i|
			puts "##{i} |#{row.join("|")}| \t [#{hints.join(",")}]"
			puts "-" * 13
		end
	end

end

class Mastermind
	include Board

	def initialize
		create_board
		show_board
	end

end

Mastermind.new