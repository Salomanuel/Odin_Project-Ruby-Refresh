require "01-caesar"

describe CaesarCypher do
	before(:each) do
		@alpha = ("a".."z").to_a
	end


	describe ".cypher" do

		it "cyphers simple words" do
			expect(CaesarCypher.cypher("culo")).to		eql("oluc")
			expect(CaesarCypher.cypher("banana")).to 	eql("ananab")
			expect(CaesarCypher.cypher("anna")).to	 	eql("anna")
		end
		
		it "respects caps lock" do
			skip
			expect(CaesarCypher.cypher("CulO")).to 		eql("OluC")
			expect(CaesarCypher.cypher("BaNana")).to	eql("anaNaB")
			expect(CaesarCypher.cypher("Anna")).to		eql("annA")
		end

		it "deals with weird characters" do
			skip
			expect(CaesarCypher.cypher("!@#${%^&*()-=}))aNo")).to eql("aNo")
		end
	end
end