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

end



# require './lib/05-enumerable.rb'


# 1. Create a script file to house your methods and 
# 		run it in IRB to test them later.
# 2. Add your new methods onto the existing Enumerable 
	# module. Ruby makes this easy for you because any class 
	# or module can be added to without trouble … just do 
	# something like: ~~~`ruby module Enumerable def my_each 
	# your code here end end` ~~~
# 3. Create `#my_each`, a method that is identical to `#each` but (obviously) does not use `#each`. You’ll need to remember the yield statement. Make sure it returns the same thing as `#each` as well.
# 4. Create `#my_each_with_index` in the same way.
# 5. Create `#my_select` in the same way, though you may use `#my_each` in your definition (but not `#each`).

# 6. Create `#my_all?` (continue as above)
# 7. Create `#my_any?`
# 8. Create `#my_none?`
# 9. Create `#my_count`
# 10. Create `#my_map`
# 11. Create `#my_inject`
# 12. Test your `#my_inject` by creating a method called 
	# `#multiply_els` which multiplies all the elements of the 
	# array together by using `#my_inject`, e.g. 
	# `multiply_els([2,4,5]) #=> 40`
# 13.
# 14.