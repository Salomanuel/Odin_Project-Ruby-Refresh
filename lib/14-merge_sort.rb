def sort(unsorted)
	# DIVIDE
	if unsorted.length > 2
		half = unsorted.length/2
		part1 = unsorted[0..half-1]
		part2 = unsorted[half ..-1]
		sort(part1)
		sort(part2)
	else
		# by this point everything is divided
		puts unsorted.join("*")
	end
end

puts sort([4,3,2,1])