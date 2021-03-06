require 'connect_four_git'

describe Connect4git do
	subject(:game) {Connect4git.new}

	describe "#initialize" do
		it "sets board" do
			empty_board = Hash[(0..6).map{ |x| [x, [".", ".", ".", ".", ".", "."]] }]
			expect(game.board).to eq(empty_board)
		end
	end

	describe "#check_the_coord" do
		context "with valid coordinates" do
			it "returns true" do
				expect(game.check_the_coord(2)).to eq(true)
			end
		end
		context "with invalid coordinates" do
			it "returns false" do
				expect(game.check_the_coord(7)).to eq(false)
			end
		end
	end

	describe "#check_if_free" do
		context "if not free space" do
			it "returns false" do
				game.board[2] = ["x", "o", "o", "o", "x", "o"]
				expect(game.check_if_free(2, "x")).to eq(false)
			end
		end

		context "if free space" do
			it "sets board and returns true" do
				game.board[2] = ["x", "o", "o", "o", ".", "."]
				expect(game.check_if_free(2, "x")).to eq(true)
				expect(game.board[2][4]).to eq("x")
			end
		end
	end

	describe "#visual" do
		it "returns a string to visualize" do
			game.board[0] = ["x", "o", "o", "o", ".", "."]
			game.board[5] = [".", "o", ".", "x", "o", "."]
			current_board = ".  .  .  .  .  .  .\n" +
											".  .  .  .  .  o  .\n" +
											"o  .  .  .  .  x  .\n" +
											"o  .  .  .  .  .  .\n" +
											"o  .  .  .  .  o  .\n" +
											"x  .  .  .  .  .  ."
			expect(game.visual).to eq(current_board)
		end
	end

end