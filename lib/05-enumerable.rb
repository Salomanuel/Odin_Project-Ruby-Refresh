module Enumerable

	# def my_each
	# 	copy = []
	# 	for i in (0..(self.length - 1))
	# 		copy << yield(self[i])
	# 	end
	# 	copy
	# end

	# def my_each
	# 	copy = []
	# 	for i in (0..(self.length - 1)) 
	# 		copy << yield(self[i])
	# 	end
	# 	return copy
	# end

	# def my_each
	# 	copy = []
	# 	for i in (0..(self.length - 1))
	# 		copy << yield(self[i])
	# 	end
	# 	return copy
	# end

	def my_each
		copy = []
		for i in (0..(self.length - 1))
			copy << yield(self[i])
		end
		return copy
	end

	# def my_each_with_index
	# 	copy = []
	# 	for i in (0..(self.length - 1))
	# 		copy << yield(self[i], i)
	# 	end
	# 	return copy
	# end

	def my_each_with_index
		copy = []
		for i in (0..(self.length - 1))
			copy << yield(self[i], i)
		end
		return copy
	end

	# def my_select
	# 	copy = []
	# 	self.my_each { |i| copy << i if yield i }
	# 	return copy
	# end

	# def my_select
	# 	copy = []
	# 	self.my_each { |i| copy << i if yield i }
	# 	return copy
	# end

	# def my_select
	# 	copy = []
	# 	self.my_each { |i| copy << i if yield i }
	# 	return copy
	# end

	def my_select
		copy = []
		self.my_each { |i| copy << i if yield i }
		return copy
	end

	# def my_all?
	# 	all = []
	# 	self.my_each { |i| all << i if yield i }
	# 	return true if all.length == self.length
	# 	return false
	# end

	def my_all?
		self.my_each { |i| return false if not yield i }
		return true
	end

	def my_any?
		self.my_each { |i| return true if yield i }
		return false
	end

	def my_none?
		self.my_each { |i| return false if yield i }
		return true
	end

	def my_count
		count = 0
		for i in self
			count += 1
		end
		return count
	end

	# def my_count
	# 	count = 0
	# 	self.my_each { |i| count += 1 }
	# 	return count
	# end
end



# require './lib/05-enumerable.rb'