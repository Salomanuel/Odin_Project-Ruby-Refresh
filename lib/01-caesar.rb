class CaesarCypher
	def self.cypher(string, shift=5)
		alphabet = ("a".."z").to_a
		new_string = []
		string.split("").each do |letter|
			if alphabet.index(letter) + shift > 25 #(alphabet.length -1)
				new_index = alphabet.index(letter) + shift - (alphabet.length) 
			else
				new_index = alphabet.index(letter) + shift
			end
			new_letter = alphabet[new_index]
			new_string << new_letter
		end

		return new_string.join
	end
end

stringone = "vwxyz"
# puts CaesarCypher.cypher(stringone)

# put checks for weird chars
# check caps or not