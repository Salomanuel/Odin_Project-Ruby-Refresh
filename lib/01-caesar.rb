class CaesarCypher
	def self.cypher(string, shift=5)
		alphabet = ("a".."z").to_a
		new_string = []
		string.split("").each do |l|
			index = alphabet.index(l)
			new_l = alphabet[index + shift]
			new_string << new_l
		end

		return new_string.join
	end
end

# puts CaesarCypher.cypher("culo")

# put checks for weird chars
# check caps or not