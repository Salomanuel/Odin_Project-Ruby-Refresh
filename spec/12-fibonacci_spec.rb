require '12-fibonacci'

describe 'fibo' do
	it 'return 0 with 0' do
		expect(fibo(0)).to eq(0)
	end
end


=begin
Define a recursive function that takes an argument n 
and returns the fibonacci value of that position.
The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... 
So fib(5) should return 5 and fib(6) should return 8.
=end