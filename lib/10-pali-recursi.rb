def pali(string)
	# puts "#{string} #{string.length} length < 2? #{string.length < 2}"
	if (string.length < 2)
		# puts "culo a tutti, ragazzi"
		return true 
		
	end
	string = string.downcase.gsub(" ","").split("")
	if string[0] == string[-1]
		pali(string[1..-2].join)
	else
		return false
	end
end

