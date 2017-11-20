def substrings(word, dictionary)
	occurrences = {}
	dictionary.each do |word_2|
		if word.include?(word_2)
			if occurrences.key?(word_2)
				occurrences[word_2] += 1
			else
				occurrences[word_2] = 1
			end
		end
	end
	return occurrences

end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("figa", dictionary)