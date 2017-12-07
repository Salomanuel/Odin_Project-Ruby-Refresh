# test full columns
# test invalid input

require "connect_four_manuel"

describe Connect4 do
	subject(:game) { Connect4.new }

	describe "#initialize" do
		it "sets the board" do
			# skip
			fake_board = []
			6.times { fake_board << %w(. . . . . . .) }
			expect(game.board).to eq fake_board
		end
	end

	context "tiles" do
		describe "#is_it_free?" do
			it "returns true when it's free" do
				expect(game.is_it_free?(2,5)).to eq true
			end

			it "returns false when it's not free" do
				game.board[5] = %w(x x x x x x x)
				expect(game.is_it_free?(1,5)).to eq false
			end
		end
	end

	context "moves" do
		describe "#move" do
			# TEST COLUMN FULL
			it "occupies a full line" do
				# skip
				7.times { |i| game.move(i) }
				expect(game.board[5]).to eq %w(x x x x x x x)
			end

			it "makes the chip falls till a free tile" do
				# skip
				3.times { game.move(5) }
				game.move(4)
				expect(game.board[4]).to eq %w(. . . . . x .)
				expect(game.board[5]).to eq %w(. . . . x x .)
			end

			it "draws a triangle" do
				triangle_board = 
					[["x",".",".",".",".",".","."],["x","x",".",".",".",".","."],
					["x","x","x",".",".",".","."],["x","x","x","x",".",".","."],
					["x","x","x","x","x",".","."],["x","x","x","x","x","x","."]]
				# skip
				7.times { |i| i.times { |j| game.move(j) } }
				expect(game.board).to eq triangle_board
			end
		end
	end

	context "rules" do
		describe "#has_won?" do
			context "horizontally" do 
				it "wins" do
					4.times { |i| game.move(i) }
					expect(game.has_won?).to eq true
				end
				it "doesn't win" do
					3.times { |i| game.move(i) }
					game.move(4)
					expect(game.has_won?).to eq false
				end
			end
		end
	end


	# context "Graphics" do
	# 	it "shows an empty board nicely" do
	# 		fake_board = 1.times do game.board.each { |row| puts row.join(" ") }
	# 			puts (0..6).to_a.join(" ")
	# 		end
	# 		expect(game.show_board).to eq fake_board
	# 	end
	# end
end