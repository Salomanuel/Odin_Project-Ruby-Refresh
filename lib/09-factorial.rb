def factorial(n, tot=1)
	return tot if n == 0 or n == 1
	tot *= n
	factorial(n-1, tot)
end