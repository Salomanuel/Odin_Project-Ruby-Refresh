require 'connect_four'

describe Connect4 do
	subject(:game) {Connect4.new}

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
	end
end