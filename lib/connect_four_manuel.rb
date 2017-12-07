# refactor #board_creator

class Connect4

	attr_reader :board

	def initialize
		board_creator
	end

	def board_creator
		@board = [[".",".",".",".",".",".","."],[".",".",".",".",".",".","."],
							[".",".",".",".",".",".","."],[".",".",".",".",".",".","."],
							[".",".",".",".",".",".","."],[".",".",".",".",".",".","."]]
		# @board = []
		# row 	 = []
		# 7.times { row    << "." }
		# 6.times { @board << row }
	end

	def show_board
		@board.each do |row|
			puts row.join(" ")
		end
		puts (0..6).to_a.join(" ")
	end

	def is_it_free?(column,line)
		return true if @board[line][column] == "."
		return false
	end

	def write_move(column,line,player1=true)
		color = player1 ? "x" : "o"
		@board[line][column] = color
	end

	def move(column, line=0)
		# puts @board[line][column]
		# @board[line][column] =
		# puts @board[4][3]
		#  puts @board[4].join("@")
		# @board[4][3] = "o"
		# @board[5][3] = "u"
		# puts "\t is #{column}:#{line} free? #{is_it_free?(column, line)}"

		if not is_it_free?(column,0)
			# puts "column full"
			# return "column full"
		elsif     line == 5
			# puts "write move because it's the bottom row"
			write_move(column, line)
		elsif not is_it_free?(column, (line + 1))
			# puts "write move because line + 1 not free"
			write_move(column, line)
		elsif     is_it_free?(column, (line + 1))
			# puts "line ##{line}, calling recursion"

			# puts "\t is the next line free? #{is_it_free?(column, (line + 1))}"
			# puts "\t last line free? #{is_it_free?((5),5)}"
			# puts "\t last line cell is: #{@board[5][5]}"
			move(column, (line + 1)) # recursion
		else
			puts "MISTICAL ERROR"
		end 
	end

	def has_won?
		# horizontally
		x = 0
		@board.each do |row|
			row.each do |tile|
				case tile
				when "x" then x += 1
				when "." then x = 0
				else
					puts "ERROR"
				end
				return true if x > 3
			end
		end
		# vertically
		x = 0
		7.times do |col|
			6.times do |row|
				case @board[row][col]
				when "x" then x += 1
				else 
					x = 0
				end
				return true if x > 3
			end
		end
		return false
	end


end

# game = Connect4.new
# game.move(0)
# game.move(0)
# game.move(1)
# game.move(0)
# game.move(0)
# # # puts "is it free? #{game.is_it_free?(0,0)}"
# game.show_board
# puts game.has_won?