require "10-pali-recursi"

describe "pali" do
	it "returns true for a simple palindrome" do
		expect(pali("anna")).to be true
	end

	it "returns false for a non-palindrome" do
		expect(pali("anno")).to be false
	end

	it "handles spaces" do
		expect(pali("i tanga bagnati")).to be true
	end

	it "handles caps" do
		expect(pali("Anna")).to be true
	end
end