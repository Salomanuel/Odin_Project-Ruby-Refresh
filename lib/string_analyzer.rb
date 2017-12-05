class StringAnalyzer
	def has_vowels?(word)
		word.split("").each{ |l| return true if %w(a e i o u).include?(l) }	
		return false
	end
end