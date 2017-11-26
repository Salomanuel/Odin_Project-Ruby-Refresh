# stuff to implement:
	# skull

module Board
	def create_board
		@board = []
		3.times {	@board << [".",".","."] }
	end

	def show_board
		puts "  A  B  C"
		@board.each_with_index { |row, i| puts "#{i} #{row.join("  ")}" }
	end

	def tile_free?(move)
		puts "#{move.join}"
		y = move[0]
		x = move[1]
		# puts "the tile is #{@board[y][x]}"
		return true if @board[y][x] == "."
		return false
	end

	def write_board(move, player1)
		if tile_free?(move)
			case player1
				when true  then @board[move[0]][move[1]] = "X"
				when false then @board[move[0]][move[1]] = "O"
			end
		else
			puts "Invalid move, tile already occupied"
			new_turn(true, player1)
		end
	end
end

module Input
	def ask_input
		puts "Make a move"
		return parse_input(gets.chomp)
	end

	def input_error
		puts "Please write a valid input, like C2"
		ask_input
		# new_turn(true)
	end

	def parse_input(input)
		exit if input == "exit"

		valid_input = []
		letter_present  = false
		number_present  = false
		input.upcase.split("").each do |n|
			if ("A".."C").to_a.include?(n) and (not letter_present)
				valid_input << n 
				letter_present = true
			end
			if ("0".."2").to_a.include?(n) and (not number_present)
				valid_input << n
				number_present = true
			end
		end
		if valid_input.length != 2
			input_error
		end
		valid_input.sort!
		case valid_input[1]
			when "A" then x = 0
			when "B" then x = 1
			when "C" then x = 2
		end
		return [valid_input[0].to_i, x]
	end
end

module Game
	def welcome
		puts "\nWelcome to TicTacToe OF DEATH"
		puts "\n"
	end

	def new_turn(again=false, player1)
		show_board if not again
		puts "\nIt's player ##{player1 ? 1 : 2}'s turn"
		move = ask_input
		if tile_free?(move)
			write_board(move, player1)
			new_turn(false, !player1)
		else
			puts "Invalid move, tile already occupied"
			new_turn(true, player1)
		end
	end
end

module Player

end

class TicTacToe
	include Board
	include Game
	include Input

	def initialize
		create_board
		welcome
		new_turn(false, true) #again and player1
	end

end





TicTacToe.new