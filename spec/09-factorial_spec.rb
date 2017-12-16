require '09-factorial.rb'

RSpec.describe "factorial" do
	it "returns 1 with 0" do
		expect(factorial(0)).to eq(1)
	end

	it "works with 1" do
		expect(factorial(1)).to eq(1)
	end

	it "works with 2" do
		expect(factorial(2)).to eq(2)
	end

	it "works with 3" do
		expect(factorial(3)).to eq(6)
	end

	it "works with 4" do
		expect(factorial(4)).to eq(24)
	end

	it "works with 8" do
		expect(factorial(8)).to eq(40320)
	end

	it "works with 20" do
		expect(factorial(20)).to eq(2432902008176640000)
	end
end