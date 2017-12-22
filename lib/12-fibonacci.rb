def fibo(n, result=0)
	return 0 if n == 0
	return 1 if n == 1
	puts "with #{n} you have:#{result}"
	return (fibo(n-1) + fibo(n-2))
end

# 10.times do |i|
# 	puts "with #{i} is: #{fibo(i)}"
# end

result100 = 354224848179261915075
result50 = 12586269025
# puts fibo(50) == result50
# puts fibo(50)
puts fibo(30)
# puts fibo(100) == result100
# puts fibo(100)
