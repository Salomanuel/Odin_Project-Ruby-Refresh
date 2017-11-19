class CaesarCypher
	def self.cypher(string, shift=5)
		alphabet 		= ("a".."z").to_a
		new_string 	= []
		string.split("").each do |letter|
			# if it has symbols
			if alphabet.index(letter).nil? and alphabet.index(letter.downcase).nil?
				new_string << letter
			else
				# upcase engine
					upcase     = true if alphabet.index(letter).nil?
					letter     = letter.downcase if upcase

				new_index  = alphabet.index(letter) + shift
				
				# if it goes after z
					new_index -= alphabet.length if new_index > (alphabet.length - 1)
				
				new_letter = alphabet[new_index]
				
					new_letter = new_letter.upcase if upcase
				new_string << new_letter
			end
		end

		return new_string.join
	end
end

# stringone = "What a string!"
# puts CaesarCypher.cypher(stringone)