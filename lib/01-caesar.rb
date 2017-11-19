class CaesarCypher
	def self.cypher(string, shift=5)
		alphabet = ("a".."z").to_a
		new_string = []
		string.split("").each do |letter|
			upcase     = true if alphabet.index(letter).nil?
			puts "upcase" if upcase
			letter = letter.downcase if upcase
			new_index  = alphabet.index(letter) + shift
			# if it goes after z
			new_index -= alphabet.length if new_index > (alphabet.length - 1)
			new_letter = alphabet[new_index]
			new_letter = new_letter.upcase if upcase
			new_string << new_letter
		end

		return new_string.join
	end
end

stringone = "Anna"
puts CaesarCypher.cypher(stringone)

# put checks for weird chars
# check caps or not