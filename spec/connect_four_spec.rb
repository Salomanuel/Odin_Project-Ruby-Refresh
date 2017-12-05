require 'connect_four'

describe "Game" do
	let(:game) { Game.new }
	let(:board) { game.board }

	describe "Board" do
		it "has 7 columns" do
			expect(board.grid[0].length).to eq(7)
		end
		it "has 6 rows" do
			expect(board.grid.length).to eq(6)
		end
		it "is mutable" do
			board.drop_disk(3, player_2)
			expect(board.grid[5][2]).to eq(player_2.sign)
		end
	end

end