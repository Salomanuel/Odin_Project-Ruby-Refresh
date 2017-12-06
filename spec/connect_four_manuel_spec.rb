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

	context "game" do
		describe "#is_it_free?" do
			it "returns true when it's free" do
				expect(game.is_it_free?(5,2)).to eq true
			end

			it "returns false when it's not free" do
				game.board[5] = %w(x x x x x x x)
				expect(game.is_it_free?(5,1)).to eq false
			end
		end

		describe "#move" do
			it "occupies a full line" do
				7.times { |i| game.move(i) }
				expect(game.board[5]).to eq %w(x x x x x x x)
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