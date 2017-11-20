def substrings(string, dictionary)
	occurrences = {}
	string.split(" ").each do |string_word|
		string_word.downcase!
		dictionary.each do |dict_word|
			if string_word.include?(dict_word)
				if occurrences.key?(dict_word)
					occurrences[dict_word] += 1
				else
					occurrences[dict_word] = 1
				end
			end
		end
	end
	return occurrences
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# puts substrings("below", dictionary)
# puts substrings("figa", dictionary)

 # { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }