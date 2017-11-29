module Board
	def create_board
		@board = []
		@hints = []
		12.times do |i|
			@board << [" ", " ", " ", " "]
			@hints << [" ", " ", " ", " "]
		end
	end

	def show_board
		puts "Here is the board"
		@board.each_with_index do |row, i|
			puts "##{i} |#{row.join("|")}| \t hints:|#{@hints[i].join("|")}|"
			puts "-" * 13
		end
	end

	def write_board(code, turn, hints)
		@board[turn] = code
		hints << " " until hints.length > 3
		@hints[turn] = hints
	end
end

module Game
	def secret_code
		@secret_code = []
		4.times { @secret_code << ("A".."D").to_a[rand(4)] }
		return @secret_code
	end

	def get_hints(code)
		hints = []
		code_h = code.dup
		code_h.each_index do |i|	
			if code_h[i] == @secret_code[i]
				hints << "x"
				code_h[i] = "z"
			end
		end
		code_h.each_index do |i|
			# if @secred_code.
			# 	hints << "." 
			# end
		end
		return hints
	end

	def new_turn
		puts @secret_code.join
		@turn ||= 0
		code = get_input
		write_board(code, @turn, get_hints(code))
		show_board
		@turn += 1
		new_turn if not win?(code)
	end

	def win?(code)
		if @secret_code == code
			puts "you got the code!"
			exit
		elsif 
			@turn > 11
			puts "you ran out of turns, try a new game"
			exit
		else
			return false
		end
	end
end

module Input
	def get_input
		puts "guess the code (use #{("A".."D").to_a.join(" ")})"
		code = parse_input(gets.chomp)
		return code
	end

	def parse_input(input) # CHECK LENGTH
		code = []
		exit if input == "exit"
		if input.length > 4
			puts "mate, the code is only 4 characters long" 
			get_input
		else
			input.split("").each do |i|
				if ("A".."D").to_a.include?(i.to_s.upcase)
					code << i.upcase
				else
					puts "write the code only using the letters #{("A".."D").to_a.join(" ")}"
					get_input
				end
			end
		end
		return code
	end
end

class Mastermind
	include Board
	include Game
	include Input

	def initialize
		secret_code
		create_board
		show_board
		new_turn
	end

end

Mastermind.new