require "01-caesar"

describe CaesarCypher do

	it "cyphers a simple word" do
		expect(CaesarCypher("culo").to eql("oluc"))
	end

end