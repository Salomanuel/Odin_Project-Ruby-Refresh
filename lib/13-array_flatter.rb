def flattah(array, ordered = [])
	array.each do |element|
		if element.is_a?(Array)
			flattah(element, ordered)
		else
			ordered << element
		end
	end
	return ordered
end

# puts flattah([[1, 2], [3, 4]])



=begin
Define a recursive function that flattens an array.
The method should convert 
[[1, 2], [3, 4]] to [1, 2, 3, 4] and 
[[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].
=end