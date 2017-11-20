def bubble_sort(array)

	clean_array = []
	finished 		= 0
	until finished > array.length
		array.each_index do |i|
			puts "(#{i}):#{array.join(", ")}, finished:#{finished}"
			sleep(0.2)
			break if i == array.length - 1
			if array[i] > array[i + 1]		# SHIFTANZA
				temp 			= array[i]
				array[i] 	= array[i + 1]
				array[i + 1] 	= temp
				finished  = 0
			else
				finished += 1
			end
		end
	end
	return array


end



puts bubble_sort([4,3,78,2,0,2]).join(", ")
# => [0,2,2,3,4,78]
