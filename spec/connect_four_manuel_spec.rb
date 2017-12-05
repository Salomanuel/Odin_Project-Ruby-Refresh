require "connect_four_manuel"

describe Connect4 do
	subject(:game) { Connect4.new }

	describe "#initialize" do
		it "sets the board" do
			fake_board = []
			6.times { fake_board << %w(. . . . . . .) }
			expect(game.board).to eq fake_board
		end
	end
end