require '13-array_flatter'

describe "flattah" do
	it "flattens a small array" do
		expect(flattah([[1,2],[3,4]])).to eq([1,2,3,4])
	end

	it "flattens a medium array" do
		arra = [[1, [8, 9]],[3, 4]]
		arra_flat = [1,8,9,3,4]
		expect(flattah(arra)).to eq(arra_flat)
	end
end


=begin
Define a recursive function that flattens an array.
The method should convert 
[[1, 2], [3, 4]] to [1, 2, 3, 4] and 
[[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].
=end