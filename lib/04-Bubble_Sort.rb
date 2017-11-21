# def bubble_sort(array)
# 	finished 		= 0
# 	until finished > array.length
# 		array.each_index do |i|
# 			puts "(#{i}):#{array.join(", ")}, finished:#{finished}"
# 			sleep(0.2)
# 			break if i == array.length - 1
# 			if array[i] > array[i + 1]		# SHIFTANZA
# 				temp 			= array[i]
# 				array[i] 	= array[i + 1]
# 				array[i + 1] 	= temp
# 				finished  = 0
# 			else
# 				finished += 1
# 			end
# 		end
# 	end
# 	return array
# end

# def bubble_sort_by(array, block)
# 	return bubble_sort(array)
# end

def bubble_sort(array)
	skips = 0
	until skips > array.length do
		array.each_index do |i|
			break if i == array.length - 1
			puts "#{i}) #{array} skips:#{skips}"
			if array[i] > array[i + 1]
				skips = 0
				temp 					= array[i]
				array[i] 			= array[i + 1]
				array[i + 1] 	= temp
			else
				skips += 1
			end
		end
	end
	return array
end


puts bubble_sort([4,3,78,2,0,2]).join(", ")
# => [0,2,2,3,4,78]


# bubble_sort_by(["hi","hello","hey"]) do |left,right|
#   left.length - right.length
# end
# => ["hi", "hey", "hello"]


# def eat(meal)
# 	meal.each { |food| yield(food)}
# 	'delicious'
# end

# puts eat(['cheese', 'steak', 'wine']) { |food| puts "Mmm, #{food}" }