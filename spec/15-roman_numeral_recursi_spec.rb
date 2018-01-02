require '15-roman_numeral_recursi'

describe 'roman' do
	it 'works with 4' do
		expect(roman(4)).to eq("IV")
	end
	it 'works with 3' do
		expect(roman(3)).to eq("III")
	end
	it 'works with 15' do
		expect(roman(15)).to eq("XV")
	end
	it 'works with 49' do
		expect(roman(49)).to eq("XLIX")
	end
	it 'works with 1999' do
		expect(roman(1999)).to eq("MCMXCIX")
	end
end
